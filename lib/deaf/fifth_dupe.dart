import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lmp/mute/fourth_dupe.dart';
import 'four.dart';
import 'speech.dart';

class deaff extends StatelessWidget {
  static const routeName = 'fifth_dupe';
  const deaff({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Square',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'BLIND'),
      routes: {
        Deaf.routeName: (_) => Deaf(),
        mutee.routeName: (_) => mutee(),
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
                      "Deaf",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/home_deaf.png',
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
            color: Colors.amber,
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
            leading: const Icon(Icons.music_note),
            title: const Text("Audio to Text"),
            onTap: () {
              Navigator.of(context).pushNamed(Deaf.routeName);
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
            tileColor: Color.fromARGB(255, 38, 201, 73),
            textColor: Colors.white,
            iconColor: Colors.white,
            leading: const Icon(Icons.sign_language),
            title: const Text("Sign Language"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => mutee()));
            },
          ),
        ),
      ],
    ));
  }
}
