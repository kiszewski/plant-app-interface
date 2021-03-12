import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallItemCardWidget extends StatelessWidget {
  final String name;
  final String country;
  final double price;
  final String image;

  SmallItemCardWidget(
      {Key key, this.name, this.country, this.price, this.image})
      : super(key: key);

  TextStyle priceTextStyle = TextStyle(color: Colors.green, fontSize: 12);
  TextStyle countryTextStyle =
      TextStyle(color: Colors.green[200], fontSize: 12);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
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
          Image.asset(image),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name),
                    SizedBox(height: 5),
                    Text(country, style: countryTextStyle)
                  ],
                ),
                Text(
                  '\$${price.toStringAsFixed(0)}',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
