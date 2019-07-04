# floating_action_row

A Flutter package that provides a widget with a row or column of floating action buttons.

<img src="https://raw.githubusercontent.com/niklas-8/floating_action_row/master/assets/1.jpg" width="220px">

## Usage

To use this plugin, add `floating_action_row` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Documentation

View the [documentation](https://pub.dev/documentation/floating_action_row/latest/floating_action_row/floating_action_row-library.html) for more information.

## Example

```dart
FloatingActionRow(
    color: Colors.blueAccent,
    children: <Widget>[
        FloatingActionRowButton(
            icon: Icon(Icons.add),
            onTap: () {}
        ),
        FloatingActionRowDivider(),
        FloatingActionRowButton(
            icon: Icon(Icons.arrow_forward),
            onTap: () {}
        ),
    ],
)
```

See the `example` directory for a full example.

## Issues & Feedback

Please file an [issue](https://github.com/niklas-8/floating_action_row/issues) to send feedback or report a bug. Thank you!

## Contributing

Every pull request is welcome.
