import 'package:get/get.dart';
import 'package:m360ict/common/utils/network_manager.dart';

class GeneralBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}