import 'package:flutter/material.dart';

/// Creates a divider for [FloatingActionRow]
class FloatingActionRowDivider extends StatelessWidget {
  final Color color;
  final double width;
  final EdgeInsets padding;

  FloatingActionRowDivider({
    this.color,
    this.width = 1,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    Color defaultColor =
        Theme.of(context).floatingActionButtonTheme.foregroundColor ??
            Theme.of(context).accentIconTheme.color;

    Widget result;

    result = LayoutBuilder(
      builder: (context, constraints) {
        bool isColumn = false;
        if (constraints.maxHeight > constraints.maxWidth) {
          isColumn = true;
        }
        EdgeInsets defaultPadding = isColumn
            ? EdgeInsets.symmetric(horizontal: 10)
            : EdgeInsets.symmetric(vertical: 10);
        return Container(
          width: isColumn ? constraints.maxWidth : width,
          height: isColumn ? width : constraints.maxHeight,
          margin: padding ?? defaultPadding,
          color: color ?? defaultColor.withOpacity(.4),
        );
      },
    );

    return result;
  }
}
