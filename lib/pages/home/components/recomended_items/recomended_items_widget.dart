import 'package:flutter/material.dart';
import 'package:plant_app_interface/models/plant_model.dart';

import '../more_button_widget.dart';
import '../section_title_text_widget.dart';
import 'small_item_card_widget.dart';

class RecomendedItemsWidget extends StatelessWidget {
  final List<PlantModel> _plants = [
    PlantModel(
      name: 'SAMANTHA',
      country: 'RUSSIA',
      price: 400,
      image: 'assets/images/image_1.png',
    ),
    PlantModel(
      name: 'ANGELICA',
      country: 'RUSSIA',
      price: 540,
      image: 'assets/images/image_2.png',
    ),
    PlantModel(
      name: 'SAMANTHA',
      country: 'RUSSIA',
      price: 540,
      image: 'assets/images/image_3.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: _width * .05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SectionTitleTextWidget(text: 'Recomended'),
                MoreButtonWidget(),
              ],
            ),
          ),
          Container(
            width: _width,
            height: _height * .4,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: _plants.length,
              itemBuilder: (context, index) =>
                  SmallItemCardWidget(plant: _plants[index]),
            ),
          )
        ],
      ),
    );
  }
}
