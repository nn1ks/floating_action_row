import 'package:flutter/material.dart';

import 'package:floating_action_row/floating_action_row.dart';

void main() {
  runApp(
    MaterialApp(
      home: Example(),
      title: "FloatingActionRow Example",
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    children.add(
      FloatingActionRowButton(
        icon: Icon(Icons.add),
        onTap: () {},
      ),
    );
    children.add(
      FloatingActionRowDivider(),
    );
    children.add(
      FloatingActionRowButton(
        icon: Icon(Icons.done),
        onTap: () {},
      ),
    );
    children.add(
      FloatingActionRowDivider(),
    );
    children.add(
      FloatingActionRowButton(
        icon: Icon(Icons.arrow_forward),
        onTap: () {},
      ),
    );

    return Scaffold(
      floatingActionButton: FloatingActionRow(
        children: children,
        color: Colors.blueAccent,
        elevation: 4,
      ),
    );
  }
}
