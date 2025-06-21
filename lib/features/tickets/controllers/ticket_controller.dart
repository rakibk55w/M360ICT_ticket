import 'package:get/get.dart';
import 'package:m360ict/common/http/http_client.dart';
import 'package:m360ict/features/tickets/model/ticket_model.dart';

class TicketController extends GetxController {
  static TicketController get instance => Get.find();

  final RxList<TicketModel> tickets = <TicketModel>[].obs;
  final RxBool isTicketLoading = false.obs;

  @override
  void onInit() {
    fetchTickets();
    super.onInit();
  }

  Future<void> fetchTickets() async {
    try {
      isTicketLoading.value = true;
      final response = await HttpHelper.get("6855a8978561e97a502854fd/latest");

      final List<dynamic> ticketData = response['record']['tickets'];
      tickets.value = ticketData.map((data) => TicketModel.fromJson(data)).toList();
    } catch (exception){
      throw('Error fetching tickets: $exception');
    } finally {
      isTicketLoading.value = false;
    }
  }
}