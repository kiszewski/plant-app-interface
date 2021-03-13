import 'package:flutter/material.dart';

class RowButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      child: Row(
        children: [
          Container(
            height: _height * .1,
            width: _width * .5,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25))),
            child: Center(
                child: Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
              ),
            )),
          ),
          Container(
            height: _height * .1,
            width: _width * .5,
            child: Center(child: Text('Description')),
          ),
        ],
      ),
    );
  }
}
