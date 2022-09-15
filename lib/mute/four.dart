import 'package:flutter/material.dart';
import 'fourth_dupe.dart';

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

class NthRoute extends StatefulWidget {
  static const routeName = 'fourth_page';
  //const NthRoute({super.key});

  @override
  State<NthRoute> createState() => _NthRouteState();
}

class _NthRouteState extends State<NthRoute> {
  @override
  int n = 0;
  void increment() {
    if (n >= 0 && n < 10)
      setState(() {
        n++;
      });
  }

  void decrement() {
    if (n > 0 && n < 10)
      setState(() {
        n--;
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 38, 24, 121),
        centerTitle: true,
        title: const Text('Sign Language'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (n == 0)
              Container(
                child: Image.asset("img/0.JPG",
                    scale: 0.7, width: 700, height: 600),
              ),
            if (n == 1)
              Container(
                child: Image.asset("img/1.JPG",
                    scale: 1.0, width: 700, height: 600),
              ),
            if (n == 2)
              Container(
                child: Image.asset("img/2.JPG",
                    scale: 1.0, width: 700, height: 600),
              ),
            if (n == 3)
              Container(
                child: Image.asset("img/3.JPG",
                    scale: 1.0, width: 700, height: 600),
              ),
            if (n == 4)
              Container(
                child: Image.asset("img/4.JPG",
                    scale: 1.0, width: 700, height: 600),
              ),
            if (n == 5)
              Container(
                child: Image.asset("img/5.JPG",
                    scale: 1.0, width: 700, height: 600),
              ),
            if (n == 6)
              Container(
                child: Image.asset("img/6.JPG",
                    scale: 1.0, width: 700, height: 600),
              ),
            if (n == 7)
              Container(
                child: Image.asset("img/7.JPG",
                    scale: 1.0, width: 700, height: 600),
              ),
            if (n == 8)
              Container(
                child: Image.asset("img/8.JPG",
                    scale: 1.0, width: 700, height: 600),
              ),
            if (n == 9)
              Container(
                child: Image.asset("img/9.JPG",
                    scale: 1.0, width: 700, height: 600),
              ),
            if (n == 10)
              Container(
                child: Image.asset("img/10.JPG",
                    scale: 1.0, width: 700, height: 600),
              ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                ElevatedButton(
                    onPressed: decrement, child: Icon(Icons.skip_previous)),
                Spacer(),
                Text('${n}' "/10"),
                Spacer(),
                ElevatedButton(
                    onPressed: increment, child: Icon(Icons.skip_next)),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
