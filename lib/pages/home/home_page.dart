import 'package:flutter/material.dart';

import 'components/app_bar/app_bar_widget.dart';
import 'components/bottom_bar/bottom_bar_widget.dart';
import 'components/featured_items/featured_items_widget.dart';
import 'components/recomended_items/recomended_items_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        color: Theme.of(context).backgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarWidget(),
              RecomendedItemsWidget(),
              FeaturedItemsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
