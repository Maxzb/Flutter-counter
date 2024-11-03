import 'package:flutter/material.dart';
import 'components/hint_label.dart';
import 'components/my_counter.dart';
// import 'components/custom_counter.dart';

void main() => runApp(const Counter());

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialUI
    final ThemeData theme = Theme.of(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter',
        theme: ThemeData(primaryColor: Colors.blueGrey),
        home: Scaffold(
          backgroundColor: Colors.amber[800],
          appBar: AppBar(
            title: Center(
                child: Text(
              'Flutter counter',
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            )),
            elevation: 3,
            backgroundColor: Colors.amber[900],
          ),
          body: const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HintLabel('Нажмите + чтобы добавить'),
                MyCounter(),
                SizedBox(
                  height: 14,
                ),
                HintLabel('Нажмите - чтобы удалить'),
              ],
            ),
          ),
        ));
  }
}
