import 'package:flutter/material.dart';

import 'floating_action_row_child.dart';

class FloatingActionRow extends StatelessWidget {
  final List<FloatingActionRowChild> children;
  final Axis axis;
  final double elevation;
  final Color color;

  /// If [axis] is Axis.vertical, then the [height] property defines the width.
  final double height;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final ShapeBorder shape;
  final String heroTag;

  /// If a [shape] is specified, then the [borderRadius] property must be null.
  FloatingActionRow({
    @required this.children,
    this.axis = Axis.horizontal,
    this.elevation = 6,
    this.color,
    this.height = 56,
    this.padding = const EdgeInsets.all(0),
    this.borderRadius,
    this.shape,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    BorderRadius defaultBorderRadius =
        BorderRadius.circular((height + padding.top + padding.bottom) / 2);

    Widget result;

    if (axis == Axis.horizontal) {
      result = Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: children,
      );
    } else {
      result = Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      );
    }

    result = Material(
      shape: shape,
      elevation: elevation,
      borderRadius:
          borderRadius ?? (shape == null ? defaultBorderRadius : null),
      child: ClipRRect(
        borderRadius: borderRadius ?? defaultBorderRadius,
        child: Container(
          color: color ??
              Theme.of(context).floatingActionButtonTheme.backgroundColor,
          height: axis == Axis.horizontal
              ? height + padding.top + padding.bottom
              : null,
          width: axis == Axis.horizontal
              ? null
              : height + padding.left + padding.right,
          padding: padding,
          child: result,
        ),
      ),
    );

    if (heroTag != null) {
      result = Hero(
        tag: heroTag,
        child: result,
      );
    }

    return result;
  }
}
