import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            padding: EdgeInsets.all(15),
            child: SvgPicture.asset(
              'assets/icons/back_arrow.svg',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: SvgPicture.asset(
            'assets/icons/more.svg',
          ),
        ),
      ],
    );
  }
}
