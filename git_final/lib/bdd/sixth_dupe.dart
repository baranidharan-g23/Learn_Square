import 'dart:ui';
import 'package:flutter/material.dart';
import 'second.dart';
import 'third.dart';
import 'four.dart';

// void main() {
//   runApp(const bddd());
// }

class bddd extends StatelessWidget {
  static const routeName = 'sixth_page';
  const bddd({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Square',
      home: const MyHomePage(title: 'BDD ASSISTANT'),
      routes: {
        SecondPage.routeName: (_) => SecondPage(),
        Vibe2Audio.routeName: (_) => Vibe2Audio(),
        FourthPage.routeName: (_) => FourthPage()
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
          color: Color.fromARGB(255, 49, 49, 49),//picture with opacity
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 43, 255, 170),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(SecondPage.routeName);
                        },
                        child: Text(
                          "Text to Vibration",
                          style: TextStyle(fontSize: 29, color: Colors.white),
                        ))),
                Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 0, 183, 255),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(Vibe2Audio.routeName);
                        },
                        child: Text(
                          "Audio to Vibration",
                          style: TextStyle(fontSize: 29, color: Colors.white),
                        ))),
                Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 2, 255, 234),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(FourthPage.routeName);
                        },
                        child: Text(
                          "Pic to Vibration",
                          style: TextStyle(
                            fontSize: 29,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ))),
                
              ],
            ),
          ),
        ),
        );
  }
}
