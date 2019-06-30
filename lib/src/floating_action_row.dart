import 'package:flutter/material.dart';

import 'floating_action_row_child.dart';

class FloatingActionRow extends StatelessWidget {
  final List<FloatingActionRowChild> children;
  final double elevation;
  final Color color;
  final double height;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final ShapeBorder shape;
  final String heroTag;

  /// If a [shape] is specified, then the [borderRadius] property must be null.
  FloatingActionRow({
    @required this.children,
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
          height: height + padding.top + padding.bottom,
          padding: padding,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: children,
          ),
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
