// //
 import 'package:flutter/material.dart';
 import 'fourth_dupe.dart';

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

class FourthRoute extends StatelessWidget {
  static const routeName = 'third_page';
  //const FourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 38, 24, 121),
        centerTitle: true,
        title: const Text('Sign Language'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "img/sign.gif",
                width: 700,
                height: 600,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 38, 24, 121),
        child: Row(
          children: [
            Spacer(),
            IconButton(
              icon:
                  Icon(Icons.grade, color: Color.fromARGB(255, 239, 243, 243)),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.safety_check,
                  color: Color.fromARGB(255, 239, 243, 243)),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.home_outlined,
                  color: Color.fromARGB(255, 239, 243, 243)),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
