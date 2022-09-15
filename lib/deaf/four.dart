import 'package:flutter/material.dart';
import 'fifth_dupe.dart';

// class FourthPage extends StatelessWidget {
//   static const routeName = 'fourth_page';
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
//         title: Text("Pic to Vibration", style: TextStyle(color: Colors.white)),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(25),
//                 bottomRight: Radius.circular(25))),
//         backgroundColor: Color.fromARGB(255, 119, 118, 118),
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import './speech.dart';

class Deaf extends StatefulWidget {
  static const routeName = 'fourth_page';
  const Deaf({Key key}) : super(key: key);

  @override
  State<Deaf> createState() => _DeafState();
}

class _DeafState extends State<Deaf> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    );
    
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const STT()),
              );
            },
            icon:const Icon(
              Icons.mic_rounded,
            ),
            label:const Text('SPEAK'),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ));
   
  }
}
