class ContactModel {
  ContactModel({
    required this.name,
    required this.email,
    required this.phone,
    this.address,
  });

  final String name;
  final String email;
  final String phone;
  final String? address;

  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      name: json['name'],
      email: json['email'],
      phone: json['phone_num'],
      address: json['address'] ?? 'Not yet added',
    );
  }
}
