// //
// import 'package:flutter/material.dart';
// import 'package:mute_final/main.dart';

// class SecondPage extends StatelessWidget {
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

class AthRoute extends StatefulWidget {
  static const routeName = 'second_page';
  //const AthRoute({super.key});
  
  @override
  State<AthRoute> createState() => _AthRouteState();
}

class _AthRouteState extends State<AthRoute> {
  @override
  int n = 1;
  void increment() {
    if (n >= 1 && n < 26)
      setState(() {
        n++;
      });
  }

  void decrement() {
    if (n > 1 && n < 26)
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
            if (n == 1)
              Container(
                child: Image.asset("img/A.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 2)
              Container(
                child: Image.asset("img/B.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 3)
              Container(
                child: Image.asset("img/C.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 4)
              Container(
                child: Image.asset("img/D.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 5)
              Container(
                child: Image.asset("img/E.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 6)
              Container(
                child: Image.asset("img/F.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 7)
              Container(
                child: Image.asset("img/G.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 8)
              Container(
                child: Image.asset("img/H.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 9)
              Container(
                child: Image.asset("img/I.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 10)
              Container(
                child: Image.asset("img/J.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 11)
              Container(
                child: Image.asset("img/K.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 12)
              Container(
                child: Image.asset("img/L.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 13)
              Container(
                child: Image.asset("img/M.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 14)
              Container(
                child: Image.asset("img/N.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 15)
              Container(
                child: Image.asset("img/O.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 16)
              Container(
                child: Image.asset("img/P.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 17)
              Container(
                child: Image.asset("img/Q.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 18)
              Container(
                child: Image.asset("img/R.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 19)
              Container(
                child: Image.asset("img/S.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 20)
              Container(
                child: Image.asset("img/T.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 21)
              Container(
                child: Image.asset("img/U.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 22)
              Container(
                child: Image.asset("img/V.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 23)
              Container(
                child: Image.asset("img/W.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 24)
              Container(
                child: Image.asset("img/X.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 25)
              Container(
                child: Image.asset("img/Y.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            if (n == 26)
              Container(
                child: Image.asset("img/Z.PNG",
                    scale: 0.40, width: 700, height: 600),
              ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                ElevatedButton(
                    onPressed: decrement, child: Icon(Icons.skip_previous)),
                Spacer(),
                Text('${n}' "/26"),
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
