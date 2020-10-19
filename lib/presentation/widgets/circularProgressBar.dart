import 'package:flutter/material.dart';
import 'package:mindsoftess/config/theme.dart';


class CircularProgressBar {
  Widget showCircleProgress({double size = 30}) => Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            backgroundColor: Colors.black,
            valueColor:
                new AlwaysStoppedAnimation<Color>(AppColors.primaryBlue3),
          ),
        ),
      );
}
