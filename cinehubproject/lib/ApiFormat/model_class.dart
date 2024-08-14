import 'package:flutter/cupertino.dart';

class TicketformatPageOne {
  final IconData icon;
  final String title;
  final String print;
  final String imagepath;
  final String formatname;
  final String submit;

  TicketformatPageOne( {
    required this.icon,
    required this.title,
    required this.print,
    required this.imagepath,
    required this.formatname,
    required this.submit,
  });

  factory TicketformatPageOne.fromJson(Map<String, dynamic> json) {
    return TicketformatPageOne(
      icon: json['myicon'] ,
      title: json['mytitle'] ?? '',
      print: json['myprint'] ?? '',
      imagepath: json['myimagepath'] ?? '',
      formatname: json['myformatname'] ?? '',
      submit: json['mysubmit'] ?? '',
    );
  }
}
