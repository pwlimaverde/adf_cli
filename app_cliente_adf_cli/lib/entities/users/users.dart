import 'dart:convert';

final class Users {
  final int id;
  final String name;
  final String email;
  final String password;

  Users({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      id: map['id']??0,
      name: map['name']??'',
      email: map['email']??'',
      password: map['password']??'',
    );
  }

  factory Users.fromJson(String json) => Users.fromMap(jsonDecode(json));
  

  



}
