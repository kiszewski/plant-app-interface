import 'package:flutter/material.dart';
import 'package:plant_app_interface/models/plant_model.dart';

class PlantInfoWidget extends StatelessWidget {
  final PlantModel plant;

  PlantInfoWidget({Key key, this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle priceTextStyle = TextStyle(
        color: Theme.of(context).primaryColor, fontSize: 20, letterSpacing: 1);

    TextStyle countryTextStyle = TextStyle(
        color: Theme.of(context).primaryColor.withOpacity(0.5), fontSize: 18);

    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      width: _width,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Angelica',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 32,
                  letterSpacing: 4,
                ),
              ),
              Text(
                '\$440',
                style: priceTextStyle,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Russia',
              style: countryTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
