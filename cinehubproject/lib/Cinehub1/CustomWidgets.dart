import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomAppbar.dart';

class ImageWidget extends StatefulWidget {
  final String imagePath;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  final String text7;
  const ImageWidget(
      {super.key,
        required this.imagePath,
        required this.text1,
        required this.text2,
        required this.text3,
        required this.text4,
        required this.text5,
        required this.text6,
        required this.text7});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30,left: 30,right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 380,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imagePath), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white, width: 1),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              children: [
                Text(
                  widget.text1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.text2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  widget.text3,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65),
            child: Text(
              widget.text4,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65),
            child: Text(
              widget.text5,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              children: [
                Text(
                  widget.text6,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.text7,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
