import 'package:flutter/material.dart';
import 'package:plant_app_interface/models/plant_model.dart';
import 'package:plant_app_interface/pages/item_detail/components/bottom/bottom_widget.dart';

import 'components/app_bar_widget.dart';
import 'components/column_icons/column_icons_widget.dart';
import 'components/image_widget.dart';

class ItemDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PlantModel plant = ModalRoute.of(context).settings.arguments;
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        height: _height,
        width: _width,
        child: Stack(
          children: [
            Positioned(
              right: -120,
              top: -50,
              child: ImageWidget(),
            ),
            Positioned(
              top: 20,
              width: _width,
              child: AppBarWidget(),
            ),
            Positioned(top: _height * .2, child: ColumnIconsWidget()),
            Positioned(
                bottom: 0,
                child: BottomWidget(
                  plant: plant,
                )),
          ],
        ),
      ),
    );
  }
}
