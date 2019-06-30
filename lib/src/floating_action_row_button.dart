import 'package:flutter/material.dart';

import 'floating_action_row_child.dart';

class FloatingActionRowButton extends FloatingActionRowChild {
  final Icon icon;
  final double size;
  final ShapeBorder shape;
  final Color backgroundColor;
  final GestureTapCallback onTap;

  FloatingActionRowButton({
    @required this.icon,
    Color color,
    this.size,
    EdgeInsets padding = const EdgeInsets.all(0),
    this.shape,
    this.backgroundColor = Colors.transparent,
    @required this.onTap,
  }) : super(color: color, padding: padding);

  @override
  Widget build(BuildContext context) {
    Color defaultColor =
        Theme.of(context).floatingActionButtonTheme.foregroundColor ??
            Theme.of(context).accentIconTheme.color;

    Widget result;

    result = LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: size ?? constraints.maxHeight,
          height: size ?? constraints.maxHeight,
          child: Container(
            child: RawMaterialButton(
              elevation: 0,
              highlightElevation: 0,
              fillColor: backgroundColor,
              padding: padding,
              shape: shape ??
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
              child: IconTheme.merge(
                data: IconThemeData(
                  color: color ?? defaultColor,
                ),
                child: icon,
              ),
              onPressed: onTap,
            ),
          ),
        );
      },
    );

    return result;
  }
}
