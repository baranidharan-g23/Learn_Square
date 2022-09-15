import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class lang extends StatefulWidget {
  static const routeName = 'seventh_dupe';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<lang> {
  String dropdownFrom = "English";
  String dropdownTo = "Hindi";
  String userinput = "";
  String result = "";
  // This is made by Bishworaj Poudel for FlutterHope.com
  // https://www.flutterhope.com/
  // If you want to add your country in the list, just add the code in the list.
  // Country Code List: https://cloud.google.com/translate/docs/languages
  //
  List<String> availableLang = <String>[
    'English',
    'Nepali',
    'Japnease',
    'Korean',
    'Hindi',
    'Tamil',
    'Kannada'
  ];
  List<String> languageCode = <String>[
    'en',
    'ne',
    'ja',
    'ko',
    'hi',
    'ta',
    'kn'
  ];
//Translate
  resultTranslate() async {
    final translator = GoogleTranslator();
    translator
        .translate(userinput,
            from: languageCode[availableLang.indexOf(dropdownFrom)],
            to: languageCode[availableLang.indexOf(dropdownTo)])
        .then(print);
    var translation = await translator.translate(userinput,
        to: languageCode[availableLang.indexOf(dropdownTo)]);
    setState(() {
      result = translation.text;
    });
    // prints exemplo
  }

// Translate
  @override
  Widget build(BuildContext context) {
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
                        "Language Translator",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      width: 400,
                      height: 300,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/translator.png',
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
          Padding(
            padding: const EdgeInsets.all(40),
            child: ListView(
              children: [
                // First Row
                Row(
                  children: [
                    const Expanded(flex: 1, child: Text('From:  ')),
                    Expanded(
                      flex: 5,
                      child: DropdownButton<String>(
                        value: dropdownFrom,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownFrom = newValue;
                          });
                        },
                        items: availableLang
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                // Second Row
                Row(
                  children: [
                    const Expanded(flex: 1, child: Text('To:  ')),
                    Expanded(
                      flex: 5,
                      child: DropdownButton<String>(
                        value: dropdownTo,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownTo = newValue;
                          });
                        },
                        items: availableLang
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                // TextFeild
                TextField(
                  maxLines: 5,
                  onChanged: (val) {
                    setState(() {
                      userinput = val;
                    });
                  },
                  decoration: const InputDecoration(
                      hintText: "Enter something",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                    height: 50,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(
                          color: Colors.blue,
                        )),
                    child: const Text('Translate',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    onPressed: () {
                      resultTranslate();
                    }),

                // Result
                const SizedBox(
                  height: 10,
                ),

                Center(
                    child: Text(result,
                        style: const TextStyle(
                            color: Colors.black, fontSize: 20))),

                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
