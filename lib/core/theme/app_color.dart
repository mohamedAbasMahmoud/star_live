// This file contains all the colors used in the app

// Primary color
import 'package:flutter/material.dart';
import 'package:trust_task/core/functions/build_material_color.dart';

class AppColors {
  // main colors
 static const primaryColor = Color(0xFFB3D2EE);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;
  static const Color lightGrey = Color(0xFFE0E0E0);
  static const Color background = Color(0xFFF8F2F0);
  static const Color selectionBorder = Color(0xFFD6D6D6);
}

//====================NotUse========================
const primaryLightColor = Color(0xffEFF9D8);
const primaryMediumColor = Color(0xffB3D2EE);
const greenColor = Color(0xFF859242);
const babyBlue = Color(0xFF6D8CC2);
//const slateBlue = Color(0xFFD1E2F4);
const PaleBlue = Color(0xFFB3D2EE); // Blue button color
const orangeColor = Color(0xFFBF923B); // Orange text color
const lightBlueTextColor = Color(0xFF9EB9D9); // Light blue text
const pinkColor = Color(0xFFF5EDEA); // Light blue text
const lightBlue = Color(0xFF42A5F5);
const yellowColor = Color(0xfffdce00);
const deepGreenColor = Color(0xff019C5F);
const fontGreyColor = Color(0xffC3C3C3); //Color(0xFF4CAF50)
const green = Color(0xFF4CAF50); //Color(0xFF4CAF50)

///
///

// App color
const textColor = Color(0xFF000000);
const lightTextColor = Color(0xFFF5F5F5);
const blackColor = Color(0xFF000000);
const whiteColor = Color(0xFFFFFFFF);
const greyColor = Color(0xFF9A9A9D);
const borderColor = Color(0xFFdbdbdb);
const lightGreyColor = Color(0xFFF5F5F5);
const transparentColor = Color(0x00000000);
const textButtonColor = greenColor;
const backgroundColor = Color(0xFFF6F6F6);

// Status colors
const Color successColor = Color(0xff4caf50);
const Color dangerColor = Color(0xffdc3545);
const Color warningColor = Color(0xffffcc00);

// Material color
MaterialColor primarySwatchColor = buildMaterialColor(AppColors.primaryColor);
