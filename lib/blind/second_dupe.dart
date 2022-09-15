import 'dart:ui';
import 'package:flutter/material.dart';
import 'second.dart';
import 'third.dart';
import 'four.dart';

class Blindd extends StatelessWidget {
  static const routeName = 'second_dupe';
  // const Blindd({Key key}) : super(key: key);
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
  Widget build(BuildContext barani) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Container(
                      child: Text(
                        "Blind",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      width: 400,
                      height: 300,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/home_blind.png',
                          ),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 10,
              shadowColor: Color.fromARGB(255, 60, 47, 173),
              color: Colors.lightBlueAccent,
            ),
          ),
          const Divider(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              tileColor: Color.fromARGB(255, 105, 87, 196),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.text_fields),
              title: const Text("Text to Audio"),
              // onTap: () {
              //   Navigator.of(context).pushNamed(text2speech.routeName);
              // },
            ),
          ),
          const Divider(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              tileColor: Color.fromARGB(255, 227, 159, 159),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.text_decrease),
              title: const Text("Text to Braille"),
              onTap: () {
                Navigator.of(context).pushNamed(braillee.routeName);
              },
            ),
          ),
          const Divider(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              tileColor: Color.fromARGB(255, 105, 179, 70),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.image),
              title: const Text("Picture to Audio"),
              // onTap: () {
              //   Navigator.of(context).pushNamed(pic2speech.routeName);
              // },
            ),
          ),
        ],
      ),
    );
  }
}
