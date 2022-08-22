import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}
Map mapper = {
  'a': '⠁',
  'b': '⠃',
  'c': '⠉',
  'd': '⠙',
  'e': '⠑',
  'f': '⠋',
  'g': '⠛',
  'h': '⠓',
  'i': '⠊',
  'j': '⠚',
  'k': '⠅',
  'l': '⠇',
  'm': '⠍',
  'n': '⠝',
  'o': '⠕',
  'p': '⠏',
  'q': '⠟',
  'r': '⠗',
  's': '⠎',
  't': '⠞',
  'u': '⠥',
  'v': '⠧',
  'w': '⠺',
  'x': '⠭',
  'y': '⠽',
  'z': '⠵',
  ' ': '⠀',
  '1': '⠼⠁',
  '2': '⠼⠂',
  '3': '⠼⠃',
  '4': '⠼⠄',
  '5': '⠼⠅',
  '6': '⠼⠆',
  '7': '⠼⠇',
  '8': '⠼⠈',
  '9': '⠼⠉',
  '0': '⠼⠴',
  '.': '⠨',
  ',': '⠠', //space increases , time between words increases
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController texty = new TextEditingController();
  int i = 0;
  String code = '';

  void encoder() {
    setState(() {
      String temp = texty.text.toLowerCase();
      code = '';
      for (int i = 0; i < temp.length; i++) {
        code += mapper[temp[i]] + ' ';
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
        backgroundColor: Color.fromARGB(228, 11, 3, 77),
        centerTitle: true,
        title: Text('Text to Braille',
            style: TextStyle(color: Colors.white, fontSize: 25)),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 60, left: 9, right: 9, bottom: 10),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Paste your text here..."),
                controller: texty,
              )),
          SizedBox(
            width: 250,
            height: 120,
            child: Padding(
              padding: EdgeInsets.all(30),
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
                child: Text(
                  code,
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          )
        ]),
      ),
      floatingActionButton: Container(
        width: 90,
        height: 90,
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(228, 11, 3, 77),
          onPressed: () {
            //encoder();
            encoder();
            write('$code');
          
          },
          child: Icon(
            Icons.play_arrow,
            size: 80,
          ),
        ),
      ),
    );
  }

  Future<String> get _localPath async {
    var directory = await getExternalStorageDirectory();
    directory ??= await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/sample.txt');
  }

  Future<File> write(String data) async {
    final file = await _localFile;
    // Write the file in append mode so it would append the data to existing file
    // if it already exists
    return file.writeAsString('$data\n', mode: FileMode.writeOnly);
  }
}
