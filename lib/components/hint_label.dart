import 'package:flutter/material.dart';

class HintLabel extends StatelessWidget {
  final String hintText;

  const HintLabel(this.hintText, {super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.amberAccent[500]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(hintText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: Colors.blueGrey[800],
              fontWeight: FontWeight.w300,
              // TextStyle(
              //   color: Colors.blueGrey[800],
            )),
      ),
    );
  }
}
