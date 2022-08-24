// //
// import 'package:flutter/material.dart';
// import 'package:lsq1/main.dart';

// class ThirdPage extends StatelessWidget {
//   static const routeName = 'third_page';
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//         title:
//             Text("Audio to Vibration", style: TextStyle(color: Colors.white)),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(25),
//                 bottomRight: Radius.circular(25))),
//         backgroundColor: Color.fromARGB(255, 119, 118, 118)
//       )),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Board.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(SlidingPuzzle());
}

class SlidingPuzzle extends StatelessWidget {
  static const routeName = 'third_page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sliding Puzzle",
      debugShowCheckedModeBanner: false,
      home: Board(),
    );
  }
}
