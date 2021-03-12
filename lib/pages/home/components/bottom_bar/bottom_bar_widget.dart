import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: Container(
            child: SvgPicture.asset('assets/icons/flower.svg'),
            margin: EdgeInsets.only(top: 10),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Container(
            child: SvgPicture.asset('assets/icons/heart-icon.svg'),
            margin: EdgeInsets.only(top: 10),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Container(
            child: SvgPicture.asset('assets/icons/user-icon.svg'),
            margin: EdgeInsets.only(top: 10),
          ),
        ),
      ],
    );

    return Container(
      width: _width,
      height: _height * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset('assets/icons/flower.svg'),
        ],
      ),
    );
  }
}
