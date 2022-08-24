//text to vibration
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import 'dart:io';

Map timimg = {'-': 800, '.': 100, ' ': 0}; // increasing values of - and . here
//will provide extra vibration time for them respectively
// increasing the value of ' ' will result in giving noise vibration for spaces
// thus zero is maintained
Map mapper = {
  'a': '.-',
  'b': '-...',
  'c': '-.-.',
  'd': '-..',
  'e': '.',
  'f': '..-.',
  'g': '--.',
  'h': '....',
  'i': '..',
  'j': '.---',
  'k': '-.-',
  'l': '.-..',
  'm': '--',
  'n': '-.',
  'o': '---',
  'p': '.--.',
  'q': '--.-',
  'r': '.-.',
  's': '...',
  't': '-',
  'u': '..-',
  'v': '...-',
  'w': '.--',
  'x': '-..-',
  'y': '-.--',
  'z': '--..',
  ' ': '   ' //space increases , time between words increases
};

//routing
/*class SecondPage extends StatelessWidget {
  static const routeName =
      'second_page';*/
// class SecondPage extends StatelessWidget {
//   static const routeName = 'second_page';
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class SecondPage extends StatefulWidget {
  static const routeName = 'second_page';
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SecondPage> {
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

  int adjustknob =
      300; //adjust knob increases -> time space between letters increases
  void vibe() {
    for (int i = 0; i < code.length - 1; i++) {
      int time = timimg[code[i]];
      Vibration.vibrate(duration: time);
      sleep(Duration(milliseconds: time + adjustknob));
    }
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
        title: Text('Text to Vibration',
            style: TextStyle(color: Colors.white, fontSize: 25)),
      ),
      body: Column(children: <Widget>[
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
        if (i == 1)
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
            child: Text(
              code,
              style: TextStyle(fontSize: 20),
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        )
      ]),
      floatingActionButton: Container(
        width: 120,
        height: 120,
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(228, 11, 3, 77),
          onPressed: () {
            //encoder();
            encoder();
            setState(() {
              i = 1;
              // encoder();
            });

            vibe();
          },
          child: Icon(
            Icons.play_arrow,
            size: 80,
          ),
        ),
      ),
    );
  }
}
