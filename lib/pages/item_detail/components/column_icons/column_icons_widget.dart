import 'package:flutter/material.dart';
import 'package:plant_app_interface/pages/item_detail/components/column_icons/icon_widget.dart';

class ColumnIconsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      height: _height * .5,
      padding: EdgeInsets.symmetric(horizontal: _width * .05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconWidget(imagePath: 'assets/icons/sun.svg'),
          IconWidget(imagePath: 'assets/icons/icon_2.svg'),
          IconWidget(imagePath: 'assets/icons/icon_3.svg'),
          IconWidget(imagePath: 'assets/icons/icon_4.svg'),
        ],
      ),
    );
  }
}
