import 'package:get/get.dart';
import 'package:m360ict/common/http/http_client.dart';
import 'package:m360ict/features/contacts/model/contact_model.dart';

class ContactController extends GetxController {
  static ContactController get instance => Get.find();

  final RxList<ContactModel> contacts = <ContactModel>[].obs;
  final RxBool isContactLoading = false.obs;

  @override
  void onInit() {
    fetchContacts();
    super.onInit();
  }

  Future<void> fetchContacts() async {
    try {
      isContactLoading.value = true;
      final response = await HttpHelper.get("6856eb8f8a456b7966b2c288/latest");

      final List<dynamic> contactData = response['record']['contacts'];
      contacts.value = contactData.map((data) => ContactModel.fromJson(data)).toList();
    } catch (exception){
      throw('Error fetching contacts: $exception');
    } finally {
      isContactLoading.value = false;
    }
  }
}