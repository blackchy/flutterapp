import 'package:flutter/material.dart';

class ImageHelper {
  static String png(String name) {
    return "images/$name.png";
  }

  static String jpg(String name) {
    return "images/$name.jpg";
  }

  static Widget iconPng(String name,
      {double width, double height, BoxFit boxFit}) {
    return Image.asset(
      png(name),
      width: width,
      height: height,
      fit: boxFit,
    );
  }

  static Widget iconJpg(String name,
      {double width, double height, BoxFit boxFit}) {
    return Image.asset(
      jpg(name),
      width: 100,
      height: 100,
      fit: boxFit,
    );
  }
}
