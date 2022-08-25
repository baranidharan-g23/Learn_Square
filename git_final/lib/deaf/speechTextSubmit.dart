//import 'package:deaf_final/deaf_home.dart';
//import 'package:deaf_final/main.dart';
import 'package:flutter/material.dart';
import 'fifth_dupe.dart';

class SpeechTextSubmit extends StatelessWidget {
  final String SpeechText;
  SpeechTextSubmit(this.SpeechText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Learn Square"),
        ),
        body: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  'Your Messages Here!',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  SpeechText,
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    deaff()),
                          );
                      },
                      icon:const Icon(Icons.save_as_outlined),
                      label: const Text('SAVE'),
                    ),
                   const  SizedBox(
                      width: 20,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    deaff()),
                          );
                      },
                      icon: const Icon(Icons.home_outlined),
                      label: const Text('HOME PAGE'),
                    ),
                  ],
                )
              ],
            )));
  }
}
