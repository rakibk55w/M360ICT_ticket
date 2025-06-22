import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m360ict/common/http/http_client.dart';
import 'package:m360ict/features/contacts/model/contact_model.dart';

class ContactController extends GetxController {
  static ContactController get instance => Get.find();

  final RxList<ContactModel> contacts = <ContactModel>[].obs;
  final RxList<ContactModel> filteredContacts = <ContactModel>[].obs;
  final RxBool isContactLoading = false.obs;
  final RxBool isSearching = false.obs;

  final storage = GetStorage();

  @override
  void onInit() {
    loadFromStorage();
    fetchContacts();
    super.onInit();
  }

  /// - Function to fetch contacts from api
  Future<void> fetchContacts() async {
    try {
      isContactLoading.value = true;
      final response = await HttpHelper.get("6856eb8f8a456b7966b2c288/latest");

      final List<dynamic> contactData = response['record']['contacts'];
      final List<ContactModel> loadedContacts =
      contactData.map((data) => ContactModel.fromJson(data)).toList();
      contacts.value = loadedContacts;
      filteredContacts.value = loadedContacts;

      final contactJson = jsonEncode(loadedContacts.map((element) => element.toJson()).toList());
      storage.write('contacts', contactJson);
    } catch (exception){
      throw('Error fetching contacts: $exception');
    } finally {
      isContactLoading.value = false;
    }
  }

  /// - Function to search contacts
  void searchContacts(String query) {
    isSearching.value = query.isNotEmpty;
    if (query.isEmpty) {
      filteredContacts.value = contacts;
    } else {
      filteredContacts.value = contacts
          .where((element) => element.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }

  /// - Load contacts from get storage
  void loadFromStorage() async{
    final contactJson = await storage.read('contacts');
    if (contactJson != null) {
      final List<dynamic> decoded = jsonDecode(contactJson);
      final List<ContactModel> localContacts =
      decoded.map((element) => ContactModel.fromJson(element)).toList();
      contacts.value = localContacts;
      filteredContacts.value = localContacts;
    }
  }
}