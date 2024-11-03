import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<MyCounter> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => _decrement(),
          icon: const Icon(Icons.remove),
        ),
        Text('$count',
            style: theme.textTheme.titleLarge!.copyWith(
              color: Colors.blueGrey[800],
              fontWeight: FontWeight.w800,
              // TextStyle(
              //   color: Colors.blueGrey[800],
            )),
        IconButton(
          onPressed: () => _increment(),
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }

  void _increment() {
    setState(() {
      count++;
    });
  }

  void _decrement() {
    setState(() {
      count--;
    });
  }
}
