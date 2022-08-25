import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:avatar_glow/avatar_glow.dart';
import './speechTextSubmit.dart';

class STT extends StatefulWidget {
  const STT({key}) : super(key: key);

  @override
  State<STT> createState() => _STT();
}

class _STT extends State<STT> {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _textSpeech = "Press the button and start speaking";
  int buttonPressedCount = 0;

  void onListen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus:$val'),
        onError: (val) => print('onError:$val'),
      );
      if (available) {
        setState(() {
          _isListening = true;
        });
        _speech.listen(
            onResult: (val) => setState(() {
                  _textSpeech = val.recognizedWords;
                }));
      }
    } else {
      setState(() {
        _isListening = false;
        _speech.stop();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Learn Square"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: AvatarGlow(
          animate: _isListening,
          glowColor: Colors.blue,
          endRadius: 90.0,
          duration: const Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          repeatPauseDuration: Duration(milliseconds: 100),
          child: FloatingActionButton(
            child: Icon(
              _isListening ? Icons.mic : Icons.mic_none,
              size: 36,
            ),
            onPressed: () {
              onListen();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Card(
              margin: EdgeInsets.all(10),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 100,
                ),
                child: Column(children: [
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text(
                      _textSpeech,
                      style:
                         const  TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('SUBMIT'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SpeechTextSubmit(_textSpeech)),
                          );
                        },
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('GO BACK'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ]),
              )),
        ));
  }
}
