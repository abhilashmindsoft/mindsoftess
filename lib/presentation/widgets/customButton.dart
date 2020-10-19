import 'package:flutter/material.dart';
import 'package:mindsoftess/config/theme.dart';

enum ButtonType { FLAT, RAISED, BUTTON_ROUND, BUTTON_RRECT }

class CustomButton extends StatefulWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final bool isLoading;
  final ButtonType buttonType, shape;
  final bool enabled;
  final BorderRadiusGeometry borderRadius;
  final Function onPressed;
  final Gradient _raisedGradient = LinearGradient(colors: <Color>[
    Color(0xffbc1b87),
    Color(0xffed2092),
  ]);

  final Gradient _flatGradient = LinearGradient(
      colors: <Color>[AppColors.primaryBlue1, AppColors.primaryBlue2]);

  CustomButton({
    @required this.child,
    this.onPressed,
    this.gradient,
    this.width,
    this.height,
    this.borderRadius,
    bool enabled,
    this.buttonType = ButtonType.RAISED,
    this.shape = ButtonType.BUTTON_RRECT,
    this.isLoading = false,
  }) : enabled = enabled == null ? true : enabled;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          shape: widget.shape == ButtonType.BUTTON_ROUND
              ? BoxShape.circle
              : BoxShape.rectangle,
          gradient: widget.gradient == null
              ? widget.buttonType == ButtonType.FLAT
                  ? widget._flatGradient
                  : widget._raisedGradient
              : widget.gradient,
          boxShadow: widget.buttonType == ButtonType.FLAT
              ? null
              : [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0.0, 1.5),
                    blurRadius: 1.5,
                  ),
                ],
          borderRadius: widget.shape == ButtonType.BUTTON_ROUND
              ? null
              : widget.borderRadius == null
                  ? BorderRadius.circular(10.0)
                  : widget.borderRadius),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            borderRadius: widget.borderRadius == null
                ? BorderRadius.circular(10.0)
                : widget.borderRadius,
            onTap: widget.enabled ? widget.onPressed : null,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 widget.isLoading ? Container() : widget.child,
              ],
            )),
      ),
    );
  }
}
