import 'package:flutter/material.dart';

class ImageCharacter {
  ImageCharacter(
    this.name,
    this.image,
    this.color,
    this.stars,
    this.description,
    this.avatar,
  );
  final String name;
  final String image;
  final Color color;
  final int stars;
  final String description;
  final String avatar;
}

class Vision {
  Vision(
    this.name,
    this.vision,
    this.icon,
    this.listImage,
  );
  final String name;
  final String vision;
  final String icon;

  final List<ImageCharacter> listImage;
}

/*class Character {
  Character(
    this.name,
    this.category,
    this.price,
    this.punctuation,
    this.listImage,
  );
  final String name;
  final String category;
  final String price;
  final int punctuation;
  final List<ImageCharacter> listImage;
}*/
