import 'package:flutter/material.dart';

import '../more_button_widget.dart';
import '../section_title_text_widget.dart';
import 'featured_item_card_widget.dart';

class FeaturedItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: _width * .05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SectionTitleTextWidget(text: 'Featured Plants'),
                MoreButtonWidget(),
              ],
            ),
          ),
          Container(
            width: _width,
            height: _height * .4,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                FeaturedItemCardWidget(
                    imagePath: 'assets/images/bottom_img_1.png'),
                FeaturedItemCardWidget(
                    imagePath: 'assets/images/bottom_img_2.png')
              ],
            ),
          )
        ],
      ),
    );
  }
}
