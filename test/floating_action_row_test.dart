import 'package:flutter/material.dart';

import 'package:floating_action_row/floating_action_row.dart';

void main() {
  List<FloatingActionRowChild> children = <FloatingActionRowChild>[
    FloatingActionRowButton(
      icon: Icon(Icons.add),
      onTap: () {},
    ),
    FloatingActionRowDivider(),
    FloatingActionRowButton(
      icon: Icon(Icons.close),
      onTap: () {},
    ),
  ];
  FloatingActionRow floatingActionRow = FloatingActionRow(
    children: children,
  );
}
