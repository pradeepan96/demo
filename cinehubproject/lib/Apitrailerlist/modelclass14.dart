import 'package:flutter/cupertino.dart';

class TrailerList {
  final IconData icon;
  final String title;
  final String imagepath;


  TrailerList( {
    required this.icon,
    required this.title,
    required this.imagepath,
  });

  factory TrailerList.fromJson(Map<String, dynamic> json) {
    return TrailerList(
      icon: json['myicon'] ?? '',
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
    );
  }
}
