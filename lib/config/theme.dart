import 'package:flutter/material.dart';

class AppSizes {
/*  NAME         SIZE  WEIGHT  SPACING
  headline1    96.0  light   -1.5
  headline2    60.0  light   -0.5
  headline3    48.0  normal   0.0
  headline4    34.0  normal   0.25
  headline5    24.0  normal   0.0
  headline6    20.0  medium   0.15
  subtitle1    16.0  normal   0.15
  subtitle2    14.0  medium   0.1
  body1        16.0  normal   0.5
  body2        14.0  normal   0.25
  button       14.0  medium   0.75
  caption      12.0  normal   0.4
  overline     10.0  normal   1.5
  */

  ///typography standard size
  static const double txtOverLine = 10;
  static const double txtCaption = 12;
  static const double txtButton = 14;
  static const double txtBody2 = 14;
  static const double txtBody1 = 16;
  static const double txtHeadline6 = 20;
  static const double txtHeadline5 = 24;

  static const int splashScreenTitleFontSize = 48;
  static const int titleFontSize = 34;
  static const double sidePadding = 15;
  static const double widgetSidePadding = 20;
  static const double buttonRadius = 25;
  static const double imageRadius = 8;
  static const double linePadding = 4;
  static const double widgetBorderRadius = 34;
  static const double textFieldRadius = 4.0;
  static const EdgeInsets bottomSheetPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const APP_BAR_SIZE = 56.0;
  static const APP_BAR_EXPANDED_SIZE = 200.0;
}

class AppColors {
  static const primaryBlue1 = Color(0xFF55A8FF);
  static const primaryBlue2 = Color(0xFF3584EE);
  static const primaryBlue3 = Color(0xFF276CB2);
  static const navHeaderBlue = Color(0xFF3E78BC);
  static const darkBlue = Color(0xFF296DB4);
  static const btnSelect = Color(0xFF5480C0);
  static const btnOrange = Color(0xfffb641b);
  static const textblue = Color(0xff4F83C1);
  static const textblue2 = Color(0xff2196F3);
  static const flipblue = Color(0xff2874F0);
  static const paleblue = Color(0xffe0eff9);
  static const dullblue = Color(0xff78909C);
  static const btnUnSelect = Color(0xFF767B7E);
  static const drkGray1 = Color(0xFF808080);
  static const fadeWhite = Color(0xFFD8D8D8);
  static const btmNavBG = Color(0xFFF8F8F8);
  static const lightBlack = Color(0xFFE1E1E1);
  static const bgLightGray = Color(0xFFE5E5E5);
  static const red = Color(0xFFFF0000);
  static const green = Color(0xFF20b74c);
  static const greenlight = Color(0xFF4dc041);
  static const greenDark = Color(0xFF1fb64b);

  static const lightGray = Color(0xFF9B9B9B);
  static const darkGray = Color(0xFF979797);
  static const white = Color(0xFFFFFFFF);
  static const orange = Color(0xFFFFBA49);
  static const background = Color(0xFFE5E5E5);
  static const backgroundLight = Color(0xFFF9F9F9);
  static const transparent = Color(0x00000000);
  static const black_common = Color(0xff231f20);



  static const success = Color(0xFF2AA952);
}

class AppTheme {
  ThemeData coupledTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
      fontFamily: 'Bariol',
      accentColor: Color(0xFF35374C),
      primaryColor: AppColors.primaryBlue1,
      backgroundColor: Color(0xFF35374C),
      canvasColor: AppColors.btmNavBG,
      hintColor: Colors.white,
      buttonTheme: ButtonThemeData(
        buttonColor: Color(0xffbc1b87),
      ),
    );
  }
}
