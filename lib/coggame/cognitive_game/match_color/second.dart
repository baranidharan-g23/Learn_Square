// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:lsq1/cognitive_game/match_color/second.dart';
// import 'package:lsq1/cognitive_game/numsq/third.dart';
// import 'package:lsq1/cognitive_game/four.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp  extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Learn Square',
//       home: const MyHomePage(title: 'COGNITIVE GAME'),
//       routes: {
//         Match_color.routeName: (_) => Match_color(),
//         SlidingPuzzle.routeName: (_) => SlidingPuzzle(),
//         ballgame.routeName: (_) => ballgame()
//       },
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 75,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(25),
//                   bottomRight: Radius.circular(25))),
//           backgroundColor: Color.fromARGB(228, 11, 3, 77),
//           title: Text(
//             widget.title,
//             style: TextStyle(
//                 color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
//           ),
//           centerTitle: true,
//         ),
//         body: Container(
//           color: Color.fromARGB(255, 33, 32, 32),//picture with opacity
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 SizedBox(
//                     height: 120,
//                     width: 350,
//                     child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 103, 211, 26),
//                             shape: new RoundedRectangleBorder(
//                                 borderRadius: new BorderRadius.circular(30))),
//                         onPressed: () {
//                           Navigator.of(context).pushNamed(Match_color.routeName);
//                         },
//                         child: Text(
//                           "MATCH COLORS",
//                           style: TextStyle(fontSize: 29, color: Colors.white),
//                         ))),
//                 Padding(padding: EdgeInsets.all(20)),
//                 SizedBox(
//                     height: 120,
//                     width: 350,
//                     child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 16, 139, 239),
//                             shape: new RoundedRectangleBorder(
//                                 borderRadius: new BorderRadius.circular(30))),
//                         onPressed: () {
//                           Navigator.of(context).pushNamed(SlidingPuzzle.routeName);
//                         },
//                         child: Text(
//                           "NUMBER SEQUENCE",
//                           style: TextStyle(fontSize: 29, color: Colors.white),
//                         ))),
//                 Padding(padding: EdgeInsets.all(20)),
//                 SizedBox(
//                     height: 120,
//                     width: 350,
//                     child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 183, 3, 237),
//                             shape: new RoundedRectangleBorder(
//                                 borderRadius: new BorderRadius.circular(30))),
//                         onPressed: () {
//                           Navigator.of(context).pushNamed(ballgame
//                           .routeName);
//                         },
//                         child: Text(
//                           "BALL GAME",
//                           style: TextStyle(
//                             fontSize: 29,
//                             color: Color.fromARGB(255, 255, 255, 255),
//                           ),
//                         ))),

//               ],
//             ),
//           ),
//         ),);

//   }
// }
// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(blindd());
// }

// class blindd extends StatelessWidget {
//   static const routeName = 'second_page';
//   const blindd({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: AppBar(title: Text("Blind")),
//     );
//   }
// }
import 'dart:ui';
//import 'package:flutter/material.dart';
//import 'package:lsq1/cognitive_game/match_color/sec_L1.dart';
// import 'package:lsq1/cognitive_game/match_color/sec_L2.dart';
// import 'package:lsq1/cognitive_game/match_color/sec_L3.dart';

import 'Sec_L3.dart';
import 'Sec_L2.dart';
import 'Sec_L1.dart';

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

// void main() {
//   runApp(const cog_game());
// }
class Match_color extends StatelessWidget {
  static const routeName = 'second_page';
  const Match_color({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(title: 'Neon'),
      routes: {
        l1.routeName: (_) => l1(),
        l2.routeName: (_) => l2(),
        l3.routeName: (_) => l3()
      },
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<MyApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  bool appressed = true;
  bool isPressed = false;
  bool isPressedd = false;
  bool isPresseddd = false;
  @override
  Color shadowColor = Color.fromARGB(255, 0, 94, 255);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
        backgroundColor: Color.fromARGB(227, 8, 8, 8),
        title: Text(
          'Chosse difficulty level',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 28,
            shadows: [
              for (double i = 1; i < (appressed ? 8 : 4); i++)
                Shadow(
                  color: Colors.green,
                  blurRadius: 1 * i,
                )
            ],
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Listener(
          onPointerDown: (_) => setState(() {
            isPressed = false;
            isPressedd = true;
            isPresseddd = true;
          }),
          onPointerUp: (_) => setState(() {
            isPressed = false;
            isPressedd = false;
            isPresseddd = false;
          }),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    for (double i = 1; i < 5; i++)
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: (isPressed ? 5 : 3) * i,
                        inset: true,
                      ),
                    for (double i = 1; i < 5; i++)
                      BoxShadow(
                        spreadRadius: -1,
                        color: shadowColor,
                        blurRadius: (isPressed ? 5 : 3) * i,
                        blurStyle: BlurStyle.outer,
                      ),
                  ],
                ),
                child: TextButton(
                  onHover: (hoveredd) => setState(() {
                    this.isPressed = hoveredd;
                  }),
                  style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    Navigator.of(context).pushNamed(l1.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('EASY',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            shadows: [
                              for (double i = 1; i < (isPressed ? 8 : 4); i++)
                                Shadow(
                                  color: shadowColor,
                                  blurRadius: 3 * i,
                                )
                            ])),
                  ),
                ),
              ),

              ////////////////////////////////////////////////////////////////////////////////////////////
              SizedBox(
                height: 90,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    for (double i = 1; i < 5; i++)
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: (isPressedd ? 5 : 3) * i,
                        inset: true,
                      ),
                    for (double i = 1; i < 5; i++)
                      BoxShadow(
                        spreadRadius: -1,
                        color: shadowColor,
                        blurRadius: (isPressedd ? 5 : 3) * i,
                        blurStyle: BlurStyle.outer,
                      ),
                  ],
                ),
                child: TextButton(
                  onHover: (hovered) => setState(() {
                    this.isPressedd = hovered;
                  }),
                  style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    //Navigator.of(context).pushNamed(Match_color.routeName);
                    Navigator.of(context).pushNamed(l2.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('NORMAL',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            shadows: [
                              for (double i = 1; i < (isPressedd ? 8 : 4); i++)
                                Shadow(
                                  color: shadowColor,
                                  blurRadius: 3 * i,
                                )
                            ])),
                  ),
                ),
              ),

              /////////////////////////////////////
              SizedBox(
                height: 90,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    for (double i = 1; i < 5; i++)
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: (isPresseddd ? 5 : 3) * i,
                        inset: true,
                      ),
                    for (double i = 1; i < 5; i++)
                      BoxShadow(
                        spreadRadius: -1,
                        color: shadowColor,
                        blurRadius: (isPresseddd ? 5 : 3) * i,
                        blurStyle: BlurStyle.outer,
                      ),
                  ],
                ),
                child: TextButton(
                  onHover: (hovered) => setState(() {
                    this.isPresseddd = hovered;
                  }),
                  style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    //Navigator.of(context).pushNamed(Match_color.routeName);
                    Navigator.of(context).pushNamed(l3.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('HARD',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            shadows: [
                              for (double i = 1; i < (isPresseddd ? 8 : 4); i++)
                                Shadow(
                                  color: shadowColor,
                                  blurRadius: 3 * i,
                                )
                            ])),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class cog_game  extends StatelessWidget {
//   static const routeName = 'third_page';
//   const cog_game({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Learn Square',
//       home: const MyHomePage(title: 'COGNITIVE GAME'),
//       routes: {
//         Match_color.routeName: (_) => Match_color(),
//         SlidingPuzzle.routeName: (_) => SlidingPuzzle(),
//         ballgame.routeName: (_) => ballgame()
//       },
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 75,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(25),
//                   bottomRight: Radius.circular(25))),
//           backgroundColor: Color.fromARGB(228, 11, 3, 77),
//           title: Text(
//             widget.title,
//             style: TextStyle(
//                 color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
//           ),
//           centerTitle: true,
//         ),
//         body: Container(
//           color: Color.fromARGB(255, 33, 32, 32),//picture with opacity
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 SizedBox(
//                     height: 120,
//                     width: 350,
//                     child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 103, 211, 26),
//                             shape: new RoundedRectangleBorder(
//                                 borderRadius: new BorderRadius.circular(30))),
//                         onPressed: () {
//                           Navigator.of(context).pushNamed(Match_color.routeName);
//                         },
//                         child: Text(
//                           "MATCH COLORS",
//                           style: TextStyle(fontSize: 29, color: Colors.white),
//                         ))),
//                 Padding(padding: EdgeInsets.all(20)),
//                 SizedBox(
//                     height: 120,
//                     width: 350,
//                     child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 16, 139, 239),
//                             shape: new RoundedRectangleBorder(
//                                 borderRadius: new BorderRadius.circular(30))),
//                         onPressed: () {
//                           Navigator.of(context).pushNamed(SlidingPuzzle.routeName);
//                         },
//                         child: Text(
//                           "NUMBER SEQUENCE",
//                           style: TextStyle(fontSize: 29, color: Colors.white),
//                         ))),
//                 Padding(padding: EdgeInsets.all(20)),
//                 SizedBox(
//                     height: 120,
//                     width: 350,
//                     child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 183, 3, 237),
//                             shape: new RoundedRectangleBorder(
//                                 borderRadius: new BorderRadius.circular(30))),
//                         onPressed: () {
//                           Navigator.of(context).pushNamed(ballgame
//                           .routeName);
//                         },
//                         child: Text(
//                           "BALL GAME",
//                           style: TextStyle(
//                             fontSize: 29,
//                             color: Color.fromARGB(255, 255, 255, 255),
//                           ),
//                         ))),
                
//               ],
//             ),
//           ),
//         ),);
        
//   }
// }

// import 'package:lsq1/main.dart';
// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

// import 'package:flutter/material.dart';
// import 'dart:math';
// // import 'package:audioplayers/audio_cache.dart';
// import 'package:audioplayers/audioplayers.dart';

// //void main() => runApp(Match_color());

// class Match_color extends StatelessWidget {
//   // This widget is the root of your application.

//   static const routeName = 'second_page';
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'PressStart',
//       ),
//       home: ColorGame(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class ColorGame extends StatefulWidget {
//   ColorGame({Key key}) : super(key: key);

//   createState() => ColorGameState();
// }

// class ColorGameState extends State<ColorGame> {
//   /// Map to keep track of score
//   bool isPressedd=true;
//   final Map<String, bool> score = {};

//   /// Choices for game
//   final Map choices = {
//     '🍏': Colors.green,
//     '🍋': Colors.yellow,
//     '🍅': Colors.red,
//     '🍇': Colors.purple,
//     '🥥': Colors.brown,
//     '🥕': Colors.orange
//   };

//   // Random seed to shuffle order of items.
//   int seed = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('Score ${score.length} / 6'),
//           backgroundColor: Colors.pink),
//           backgroundColor: Colors.black,
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.refresh),
//         onPressed: () {
//           setState(() {
//             score.clear();
//             seed++;
//           });
//         },
//       ),
//       body: 
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: choices.keys.map((emoji) {
//                 return Draggable<String>(
//                   data: emoji,
//                   child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
//                   feedback: Emoji(emoji: emoji),
//                   childWhenDragging: Emoji(emoji: '🌱'),
//                 );
//               }).toList()),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children:
//                 choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
//                   ..shuffle(Random(seed)),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildDragTarget(emoji) {
//     return DragTarget<String>(
//       builder: (BuildContext context, List<String> incoming, List rejected) {
//         if (score[emoji] == true) {
//           return Container(
//             color: Color.fromARGB(255, 0, 0, 0),
//             child: Text('Correct!',
//             style: TextStyle(
//                 color: Color.fromARGB(255, 169, 169, 169), fontSize: 21,
//                 shadows:[
//                   for(double i=1;i<(isPressedd? 8:4);i++)
//                   Shadow(color:choices[emoji],
//                   blurRadius: 1*i,
//                   )],
//                 ),),
//             alignment: Alignment.center,
//             height: 80,
//             width: 200,
//           );
//         } else {
//           return Container(color: choices[emoji], height: 80, width: 200);
//         }
//       },
//       onWillAccept: (data) => data == emoji,
//       onAccept: (data) {
//         setState(() {
//           score[emoji] = true;
//           // plyr.play('success.mp3');
//         });
//       },
//       onLeave: (data) {},
//     );
//   }
// }

// class Emoji extends StatelessWidget {
//   const Emoji({Key key, this.emoji}) : super(key: key);

//   final String emoji;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Color.fromARGB(0, 0, 0, 0),
//       child: Container(
//         alignment: Alignment.center,
//         height: 100,
//         padding: EdgeInsets.all(10),
//         child: Text(
//           emoji,
//           style: TextStyle(color: Colors.black, fontSize: 50),
//         ),
//       ),
//     );
//   }
// }

// AudioCache plyr = AudioCache();