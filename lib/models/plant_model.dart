import 'package:flutter/material.dart';

class PlantModel {
  final String country;
  final String name;
  final double price;
  final String image;

  PlantModel({
    @required this.country,
    @required this.name,
    @required this.price,
    @required this.image,
  });
}
