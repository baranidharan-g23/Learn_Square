// // import 'package:flutter/material.dart';

// // void main(List<String> args) {
// //   runApp(blindd());
// // }

// // class blindd extends StatelessWidget {
// //   static const routeName = 'second_page';
// //   const blindd({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: AppBar(title: Text("Blind")),
// //     );
// //   }
// // }
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'cognitive_game/match_color/second.dart';
// import 'cognitive_game/numsq/third.dart';
// import 'cognitive_game/four.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

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

import 'dart:ui';
//import 'package:flutter/material.dart';
import 'cognitive_game/match_color/second.dart';
import 'cognitive_game/numsq/third.dart';
import 'cognitive_game/four.dart';

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';


class cog_game extends StatelessWidget {
  static const routeName = 'third_dupe';
  const cog_game({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(title: 'Neon'),
      routes: {
        Match_color.routeName: (_) => Match_color(),
        SlidingPuzzle.routeName: (_) => SlidingPuzzle(),
        ballgame.routeName: (_) => ballgame()
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
            side: BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
        backgroundColor: Color.fromARGB(227, 8, 8, 8),
        title: Text(
          'COGNITIVE GAME',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 35,
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
            isPressed = true;
            isPressedd = true;
          }),
          onPointerUp: (_) => setState(() {
            isPressed = false;
            isPressedd = false;
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
                    Navigator.of(context).pushNamed(Match_color.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('COLOR MATCHING',
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
                    Navigator.of(context).pushNamed(ballgame.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('BALL GAME',
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
                    Navigator.of(context).pushNamed(SlidingPuzzle.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('NUMBER SEQUENCE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 29,
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
