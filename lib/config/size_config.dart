import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenHeight;
  static late double screenWidth;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  void init(BuildContext context){
     _mediaQueryData = MediaQuery.of(context);
     screenHeight = _mediaQueryData.size.height;
     screenWidth = _mediaQueryData.size.width;
     blockSizeHorizontal = screenWidth / 100;
     blockSizeVertical = screenHeight / 100;
  }

}