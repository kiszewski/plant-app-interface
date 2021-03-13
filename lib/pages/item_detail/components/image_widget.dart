import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      child: Stack(
        children: [
          Image.asset(
            'assets/images/img_main.png',
            height: _height * .95,
            fit: BoxFit.cover,
          ),
          Positioned(
            width: 90,
            bottom: 100,
            right: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 5,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  height: 5,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.75),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  height: 5,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.75),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  height: 5,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.75),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
