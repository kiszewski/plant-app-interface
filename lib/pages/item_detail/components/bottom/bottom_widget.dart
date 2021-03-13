import 'package:flutter/material.dart';
import 'package:plant_app_interface/models/plant_model.dart';
import 'package:plant_app_interface/pages/item_detail/components/bottom/plant_info_widget.dart';
import 'package:plant_app_interface/pages/item_detail/components/bottom/row_buttons_widget.dart';

class BottomWidget extends StatelessWidget {
  final PlantModel plant;

  const BottomWidget({Key key, this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Container(
      width: _width,
      child: Column(
        children: [
          PlantInfoWidget(plant: plant),
          RowButtonsWidget(),
        ],
      ),
    );
  }
}
