import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_interface/models/plant_model.dart';

class SmallItemCardWidget extends StatelessWidget {
  final PlantModel plant;

  SmallItemCardWidget({Key key, this.plant}) : super(key: key);

  TextStyle priceTextStyle = TextStyle(color: Colors.green, fontSize: 12);
  TextStyle countryTextStyle =
      TextStyle(color: Colors.green[200], fontSize: 12);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () =>
          Navigator.of(context).pushNamed('/item_detail', arguments: plant),
      child: Container(
        width: _width * .4,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.green[100].withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ]),
        child: Column(
          children: [
            Image.asset(
              plant.image,
              fit: BoxFit.fill,
              height: _height * .28,
              width: _width * .4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(plant.name),
                      SizedBox(height: 5),
                      Text(plant.country, style: countryTextStyle)
                    ],
                  ),
                  Text(
                    '\$${plant.price.toStringAsFixed(0)}',
                    style: priceTextStyle,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
