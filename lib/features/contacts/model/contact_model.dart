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

  /// - Convert from json to data
  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      name: json['name'],
      email: json['email'],
      phone: json['phone_num'],
      address: json['address'] ?? 'Not yet added',
    );
  }

  /// - Convert to json from data
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'phone_num': phone,
      'address': address,
    };
  }
}
