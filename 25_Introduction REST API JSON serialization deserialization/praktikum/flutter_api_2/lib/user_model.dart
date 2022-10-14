class UserModel {
  late int id;
  late String email;
  late String firstName;
  late String lastName;
  late String avatar;

  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'].toString();
    firstName = json['first_name'].toString();
    lastName = json['last_name'].toString();
    avatar = json['avatar'].toString();
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['email'] = email;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['avatar'] = avatar;
    return map;
  }
}
