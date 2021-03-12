import 'package:flutter/material.dart';

class SectionTitleTextWidget extends StatelessWidget {
  final String text;

  const SectionTitleTextWidget({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 5,
            child: Row(
              children: [
                Container(
                  height: 5,
                  color: Colors.green[100],
                  width: 1000,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              text,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
