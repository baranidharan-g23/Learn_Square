// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(blindd());
// }

// class blindd extends StatelessWidget {
//   static const routeName = 'second_page';
//   const blindd({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: AppBar(title: Text("Blind")),
//     );
//   }
// }

import 'dart:ui';
import 'package:flutter/material.dart';
import 'second.dart';
import 'third.dart';
import 'four.dart';

void main() {
  runApp(blindd());
}

class blindd extends StatelessWidget {
  static const routeName = 'second_page';
  const blindd({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Square',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'BLIND'),
      routes: {
        text2speech.routeName: (_) => text2speech(),
        braillee.routeName: (_) => braillee(),
        pic2speech.routeName: (_) => pic2speech()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          backgroundColor: Color.fromARGB(228, 11, 3, 77),
          title: Text(
            widget.title,
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Color.fromARGB(255, 36, 36, 36),//picture with opacity
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 0, 247, 255),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(text2speech.routeName);
                        },
                        child: Text(
                          "TEXT TO SPEECH",
                          style: TextStyle(fontSize: 29, color: Color.fromARGB(255, 50, 50, 50)),
                        ))),
                Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 255, 0, 234),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(braillee.routeName);
                        },
                        child: Text(
                          "BRAILLE PRINTER",
                          style: TextStyle(fontSize: 29, color: Colors.white),
                        ))),
                Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 0, 255, 123),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(pic2speech.routeName);
                        },
                        child: Text(
                          "PIC TO SPEECH",
                          style: TextStyle(
                            fontSize: 29,
                            color: Color.fromARGB(255, 49, 49, 49),
                          ),
                        ))),
                
              ],
            ),
          ),
        ),
);
  }
}
