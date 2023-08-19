import 'dart:convert';

import 'address/address.dart';
import 'courses/course.dart';

final class Students {
  final int? id;
  final String name;
  final int? age;
  final List<String> nameCourses;
  final List<Course> courses;
  final Address address;
  Students({
    this.id,
    required this.name,
    this.age,
    required this.nameCourses,
    required this.courses,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'name': name,
      'nameCourses': nameCourses,
      'courses': courses.map((course) => course.toMap()).toList(),
      'address': address.toMap(),
    };

    if (age != null) {
      map['age'] = age;
    }

    if (id != null) {
      map['id'] = id;
    }

    return map;
  }

  String toJson() => jsonEncode(toMap());

  factory Students.fromMap(Map<String, dynamic> map) {
 
    final model = Students(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      age: map['age']??0,
      nameCourses: List<String>.from(map['nameCourses'] ?? <String>[]),
      courses: map['courses']
              ?.map<Course>((course) => Course.fromMap(course))
              .toList() ??
          <Course>[],
      address: Address.fromMap(map['address'] ?? <String, dynamic>{}),
    );
    return model;
  }

  factory Students.fromJson(String json) => Students.fromMap(jsonDecode(json));
}
