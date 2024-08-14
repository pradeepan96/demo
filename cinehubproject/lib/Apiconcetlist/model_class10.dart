import 'package:flutter/cupertino.dart';

class ConcertList {
  final IconData icon;
  final String title;
  final String imagepath;


  ConcertList( {
    required this.icon,
    required this.title,
    required this.imagepath,
  });

  factory ConcertList.fromJson(Map<String, dynamic> json) {
    return ConcertList(
      icon: json['myicon'] ?? '',
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
    );
  }
}
