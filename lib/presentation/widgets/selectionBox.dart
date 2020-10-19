import 'package:flutter/material.dart';

class SelectionBox extends StatelessWidget {
  final Widget child;
  final double radius, height, width;
  final Color borderColor, innerColor;
  final GestureTapCallback onTap;
  final IndexedWidgetBuilder itemBuilder;

  SelectionBox({
    Key key,
    @required this.child,
    this.radius,
    this.borderColor,
    this.innerColor,
    this.height,
    this.width,
    this.onTap,
    this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: Container(
        height: height != null ? height : null,
        width: width != null ? width : null,
        // margin: EdgeInsets.only(right: 10.0, top: 10.0),
//      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
        decoration: BoxDecoration(
//            border: Border.all(
//              color: borderColor != null ? borderColor : Colors.white,
//            ),
//            color: innerColor != null ? innerColor : Colors.transparent,
//            borderRadius: BorderRadius.all(
//                Radius.circular(radius != null ? radius : 50.0))
        ),
        child: InkWell(
          onTap: onTap != null ? onTap : null,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
