//text to vibration
//file name is details.dart
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter_tts/flutter_tts.dart';

class Details extends StatefulWidget {
  final String text;
  Details(this.text);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  static const routeName = 'detail_screen';
  FlutterTts flutterTts = FlutterTts();
  void playsound(String text) async {
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appbar check
        title: Text('Picture to Audio'),
        toolbarHeight: 70,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
        backgroundColor: Color.fromARGB(228, 11, 3, 77),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        child: SelectableText(
            widget.text.isEmpty ? 'No Text Available' : widget.text),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          playsound(widget.text);
        },
        child: Icon(Icons.volume_up),
      ),
    );
  }
}
