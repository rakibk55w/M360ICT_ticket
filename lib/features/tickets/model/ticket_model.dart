class TicketModel {
  TicketModel({
    required this.id,
    required this.detail,
    required this.submittedBy,
    required this.date,
    required this.time,
    required this.priority,
    required this.progress,
    required this.status,
    required this.spam,
  });

  final String id;
  final String detail;
  final String submittedBy;
  final String date;
  final String time;
  final String priority;
  final String progress;
  final String status;
  final bool spam;

  factory TicketModel.fromJson(Map<String, dynamic> json) {
    return TicketModel(
      id: json['id'],
      detail: json['detail'],
      submittedBy: json['submitted_by'],
      date: json['date'],
      time: json['time'],
      priority: json['priority'],
      progress: json['progress'],
      status: json['status'],
      spam: json['spam'] == 'true',
    );
  }
}
