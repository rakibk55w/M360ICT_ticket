import 'package:get/get.dart';
import 'package:m360ict/common/http/http_client.dart';

class FilterController extends GetxController {
  static FilterController get instance => Get.find();

  RxList<String> status = <String>[].obs;
  RxInt selectedStatusIndex = 0.obs;
  final RxBool isStatusLoading = false.obs;

  @override
  void onInit() {
    fetchStatus();
    super.onInit();
  }

  /// - Function to fetch status filter options from api
  Future<void> fetchStatus() async {
    try {
      isStatusLoading.value = true;
      final response = await HttpHelper.get("685824478561e97a50298854/latest");
      status.value = List<String>.from(response['record']['status']);
    } catch (exception){
      throw('Error fetching tickets: $exception');
    } finally {
      isStatusLoading.value = false;
    }
  }

}