import 'package:flutter/material.dart';

import 'floating_action_row_child.dart';

class FloatingActionRowDivider extends FloatingActionRowChild {
  final double width;

  FloatingActionRowDivider({
    Color color,
    this.width = 1,
    EdgeInsets padding = const EdgeInsets.symmetric(vertical: 10),
  }) : super(color: color, padding: padding);

  @override
  Widget build(BuildContext context) {
    Color defaultColor =
        Theme.of(context).floatingActionButtonTheme.foregroundColor ??
            Theme.of(context).accentIconTheme.color;

    Widget result;

    result = LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: width,
          height: constraints.maxHeight,
          margin: padding,
          color: color ?? defaultColor.withOpacity(.4),
        );
      },
    );

    return result;
  }
}
