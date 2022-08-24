import 'dart:ui';
import 'package:flutter/material.dart';
import 'second.dart';
import 'third.dart';
import 'four.dart';

// void main() {
//   runApp(const mutee());
// }

class mutee extends StatelessWidget {
  static const routeName = 'fourth_page';
  const mutee({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Square',
      home: const MyHomePage(title: 'MUTE'),
      routes: {
        AthRoute.routeName: (_) => AthRoute(),
        FourthRoute.routeName: (_) => FourthRoute(),
        NthRoute.routeName: (_) => NthRoute()
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
          color: Color.fromARGB(255, 48, 47, 47),//picture with opacity
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 187, 0, 255),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(AthRoute.routeName);
                        },
                        child: Text(
                          "ALPHABETS SIGN",
                          style: TextStyle(fontSize: 29, color: Colors.white),
                        ))),
                Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 26, 117, 255),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(NthRoute.routeName);
                        },
                        child: Text(
                          "NUMBER SIGN",
                          style: TextStyle(
                            fontSize: 29,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ))),
                Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 26, 109, 1),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(FourthRoute.routeName);
                        },
                        child: Text(
                          "ALPABETS SIGN GIF",
                          style: TextStyle(fontSize: 29, color: Colors.white),
                        )))
              ],
            ),
          ),
        ),
        );
  }
}
