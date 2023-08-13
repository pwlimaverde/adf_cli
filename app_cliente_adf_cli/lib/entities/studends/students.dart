import 'dart:convert';

import 'address/address.dart';
import 'courses/course.dart';

final class Students {
  final int id;
  final String name;
  final String? age;
  final List<String> nameCourses;
  final List<Course> courses;
  final Address address;
  Students({
    required this.id,
    required this.name,
    required this.age,
    required this.nameCourses,
    required this.courses,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'name': name,
      'age': age,
      'nameCourses': nameCourses,
      'courses': courses.map((course) => course.toMap()).toList(),
      'address': address.toMap(),
    };

    if (age != null) {
      map['age'] = age;
    }

    return map;
  }

  String toJson() => jsonEncode(toMap());

  factory Students.fromMap(Map<String, dynamic> map) {
    return Students(
      id: map['id']??0,
      name: map['name']??'',
      age: map['age']??0,
      nameCourses: List<String>.from(map['nameCourses']??<String, dynamic>{}),
      courses: map['courses']?.map<Course>((course)=>Course.fromMap(course)).toList()??<Course>[],
      address: map['address'],
    );
  }

  factory Students.fromJson(String json)=> Students.fromMap(jsonDecode(json));
}
