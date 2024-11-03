import 'package:flutter/material.dart';
import 'components/hint_label.dart';

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
          body: Center(
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    print('Click!');
                  },
                  padding: const EdgeInsets.all(18.0),
                  iconSize: 24,
                  icon: const Icon(Icons.games_rounded),
                ),
                const HintLabel('test 13'),
              ],
            ),
          ),
        ));
  }
}

// class HintLabel extends StatelessWidget {
//   final String hintText;

//   const HintLabel(this.hintText, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: BoxDecoration(color: Colors.amberAccent[500]),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Text(hintText,
//             style: TextStyle(
//               color: Colors.blueGrey[800],
//             )),
//       ),
//     );
//   }
// }



// class _SunflowerState extends State<Sunflower> {
//   int seeds = maxSeeds ~/ 2;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         brightness: Brightness.dark,
//         appBarTheme: const AppBarTheme(elevation: 2),
//       ),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Sunflower'),
//         ),
//         body: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: SunflowerWidget(seeds),
//               ),
//               const SizedBox(height: 20),
//               Text('Showing ${seeds.round()} seeds'),
//               SizedBox(
//                 width: 300,
//                 child: Slider(
//                   min: 1,
//                   max: maxSeeds.toDouble(),
//                   value: seeds.toDouble(),
//                   onChanged: (val) {
//                     setState(() => seeds = val.round());
//                   },
//                 ),
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


