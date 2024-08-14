
import 'package:flutter/material.dart';

class UserData {
  final IconData icon;
  final String title;
  final String imagepath;
  final String starring;
  final String starringone;
  final String starringtwo;
  final String starringthree;
  final String starringfour;
  final String director;
  final String directorname;
  final String musicdirector;
  final String musicdirectorname;
  final String rating;
  final String ratingvotes;
  final String ebtext;

  UserData( {
    required this.icon,
    required this.title,
    required this.imagepath,
    required this.starring,
    required this.starringone,
    required this.starringtwo,
    required this.starringthree,
    required this.starringfour,
    required this.director,
    required this.directorname,
    required this.musicdirector,
    required this.musicdirectorname,
    required this.rating,
    required this.ratingvotes,
    required this.ebtext,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {

    return UserData(
      icon: json['myicon'] ?? '', // Default icon if not found
      title: json['mytitle'] ?? '',
      imagepath: json['myimagepath'] ?? '',
      starring: json['mystarring'] ?? '',
      starringone: json['mystarringone'] ?? '',
      starringtwo: json['mystarringtwo'] ?? '',
      starringthree: json['mystarringthree'] ?? '',
      starringfour: json['mystarringfour'] ?? '',
      director: json['mydirector'] ?? '',
      directorname: json['mydirectorname'] ?? '',
      musicdirector: json['mymusicdirector'] ?? '',
      musicdirectorname: json['mymusicdirectorname'] ?? '',
      rating: json['myrating'] ?? '',
      ratingvotes: json['myratingvotes'] ?? '',
      ebtext: json['myebtext'] ?? '',
    );
  }
}
