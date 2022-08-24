// import 'package:flutter/material.dart';
// import 'package:blind_final/main.dart';

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

import 'widget/text_recognition_widget.dart';
import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

// class pic2speech extends StatelessWidget {
//   static const routeName = 'fourth_page';
//   final String title = 'Text Recognition';

//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: title,
//         theme: ThemeData(primarySwatch: Colors.deepOrange),
//         home: MainPage(title: title),
//       );
// }

// class MainPage extends StatefulWidget {
//   final String title;

//   const MainPage({
//     this.title,
//   });

//   @override
//   _MainPageState createState() => _MainPageState();
// }

class pic2speech extends StatelessWidget {
  static const routeName = 'fourth_page';
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Text Recognisation'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(height: 25),
              TextRecognitionWidget(),
              const SizedBox(height: 15),
            ],
          ),
        ),
      );
}
