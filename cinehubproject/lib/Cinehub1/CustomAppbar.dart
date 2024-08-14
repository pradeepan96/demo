import 'package:flutter/material.dart';

class TextWidgetOne extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  const TextWidgetOne({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
  });

  @override
  State<TextWidgetOne> createState() => _TextWidgetOneState();
}

class _TextWidgetOneState extends State<TextWidgetOne> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 30,top:10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.text1,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.text2,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Row(
              children: [
                Text(
                  widget.text3,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.text4,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: ElevatedButton(onPressed: (){},
              child: Text(widget.text5,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(maximumSize: Size(200, 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.red[900]),
            ),
          ),
        ],
      ),
    );
  }
}
