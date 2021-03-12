import 'package:flutter/material.dart';

class FeaturedItemCardWidget extends StatelessWidget {
  final String imagePath;

  const FeaturedItemCardWidget({Key key, this.imagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          imagePath,
          width: _width * .8,
          height: _height * .3,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
