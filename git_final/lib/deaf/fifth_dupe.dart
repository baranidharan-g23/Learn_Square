import 'dart:ui';
import 'package:flutter/material.dart';
import 'four.dart';
import 'speech.dart';

// void main() {
//   runApp(const MyApp());
// }

class deaff  extends StatelessWidget {
  static const routeName = 'fifth_page';
  const deaff({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Square',
      home: MyHomePage(title: 'DEAF'),
      routes: {
        Deaf.routeName: (_) => Deaf()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,required this.title}) : super(key: key);
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
          color: Color.fromARGB(255, 56, 56, 56),//picture with opacity
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 0,
                    width: 350,
                ),
                Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 0, 204, 255),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(Deaf.routeName);
                        },
                        child: Text(
                          "SPEECH TO TEXT",
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
