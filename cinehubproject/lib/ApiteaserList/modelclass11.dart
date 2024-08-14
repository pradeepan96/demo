import 'package:flutter/cupertino.dart';

class TeaserList {
  final IconData icon;
  final String title;
  final String imagepath;


  TeaserList( {
    required this.icon,
    required this.title,
    required this.imagepath,
  });

  factory TeaserList.fromJson(Map<String, dynamic> json) {
    return TeaserList(
      icon: json['myicon'] ?? '',
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
    );
  }
}
