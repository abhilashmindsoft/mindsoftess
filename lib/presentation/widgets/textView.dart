import 'package:flutter/material.dart';
import 'package:mindsoftess/config/theme.dart';

class TextView extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double size, _size, textScaleFactor;
  final Color color;
  final int maxLines;
  final double lineSpacing;
  final TextOverflow overflow;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextDecoration decoration;

  TextView(
    this.text, {
    Key key,
    this.size,
    this.fontFamily = 'Roboto',
    this.textAlign,
    this.color,
    this.textScaleFactor,
    this.fontWeight,
    this.overflow,
    this.maxLines,
    this.lineSpacing,
    this.decoration,
  })  : _size = size == null ?AppSizes.txtCaption : size,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      softWrap: true,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign != null ? textAlign : TextAlign.start,
      textScaleFactor: textScaleFactor,
      style: TextStyle(
        letterSpacing: .8,
        decoration: decoration,
        height: lineSpacing,
        color: color != null ? color : Colors.black,
        textBaseline: TextBaseline.alphabetic,
        fontWeight: fontWeight != null ? fontWeight : FontWeight.normal,
        fontFamily: fontFamily,
        fontSize: _size,
      ),
    );
  }
}
