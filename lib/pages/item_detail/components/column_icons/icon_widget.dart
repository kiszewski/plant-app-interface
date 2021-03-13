import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconWidget extends StatelessWidget {
  final String imagePath;

  const IconWidget({Key key, this.imagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      width: _width * .13,
      height: _width * .13,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).primaryColor,
              offset: Offset(0, 10),
              spreadRadius: -10,
              blurRadius: 35,
            )
          ]),
      child: SvgPicture.asset(imagePath),
    );
  }
}
