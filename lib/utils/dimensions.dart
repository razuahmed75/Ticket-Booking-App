import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.height;
  static double screenWidth = Get.width;
  static double mockupHeight = 834;
  static double mockupWidth = 392;
}

/// dynamic height
double height(double inputHeight) {
  double screenHeight = Dimensions.screenHeight;
  double mockupHeight = Dimensions.mockupHeight;

  var x = mockupHeight / inputHeight;
  var y = screenHeight / x;
  return y;
}

/// dynamic width
double width(double inputwidth) {
  double screenWidth = Dimensions.screenWidth;
  double mockupWidth = Dimensions.mockupWidth;

  var x = mockupWidth / inputwidth;
  var y = screenWidth / x;
  return y;
}

/// dynamic font
double font(double inputFont) {
  double screenHeight = Dimensions.screenHeight;
  double mockupHeight = Dimensions.mockupHeight;

  var x = mockupHeight / inputFont;
  var y = screenHeight / x;
  return y;
}

/// dynamic radius
double radius(double inputRadius) {
  double screenHeight = Dimensions.screenHeight;
  double mockupHeight = Dimensions.mockupHeight;

  var x = mockupHeight / inputRadius;
  var y = screenHeight / x;
  return y;
}
