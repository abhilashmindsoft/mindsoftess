import 'package:flutter/material.dart';

import 'package:mindsoftess/Presentation/widgets/textView.dart';
import 'package:mindsoftess/config/theme.dart';
import 'package:mindsoftess/presentation/widgets/selectionBox.dart';

class CustomDropDown extends StatelessWidget {
  final String hint;
  final List items;
  final double radius;
  final bool isExpanded;

  /// The initValue of the currently selected [DropdownMenuItem].
  ///
  /// If [initValue] is null and [hint] is non-null, the [hint] widget is
  /// displayed as a placeholder for the dropdown button's value.
  final initValue;
  final ValueChanged<Map> onChange;
  final EdgeInsetsGeometry margin;

  CustomDropDown(this.items,
      {this.hint,
      this.onChange,
      this.margin,
      this.radius,
      this.initValue,
      this.isExpanded = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin != null ? margin : null,
      child: SelectionBox(
        height: 50.0,
        radius: radius != null ? radius : 5.0,
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: AppColors.white,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<Map>(
              isDense: false,
              isExpanded: isExpanded,
              elevation: 1,
              value: initValue,
              hint: initValue == null
                  ? hint == null ? null : TextView(hint)
                  : null,
              items: items.map((value) {
                return DropdownMenuItem<Map>(
                  value: value,
                  child:
                      Container(height: 20.0, child: TextView(value['name'],size: 12,)),
                );
              }).toList(),
              onChanged: onChange != null ? onChange : null,
            ),
          ),
        ),
      ),
    );
  }
}
