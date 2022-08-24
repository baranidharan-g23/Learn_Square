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
import 'package:flutter/material.dart';
import 'cognitive_game/match_color/second.dart';
import 'cognitive_game/numsq/third.dart';
import 'cognitive_game/four.dart';

// void main() {
//   runApp(const MyApp());
// }

class cog_game  extends StatelessWidget {
  static const routeName = 'third_page';
  const cog_game({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Square',
      home: const MyHomePage(title: 'COGNITIVE GAME'),
      routes: {
        Match_color.routeName: (_) => Match_color(),
        SlidingPuzzle.routeName: (_) => SlidingPuzzle(),
        ballgame.routeName: (_) => ballgame()
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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          backgroundColor: Color.fromARGB(228, 11, 3, 77),
          title: Text(
            widget.title,
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Color.fromARGB(255, 33, 32, 32),//picture with opacity
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 103, 211, 26),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(Match_color.routeName);
                        },
                        child: Text(
                          "MATCH COLORS",
                          style: TextStyle(fontSize: 29, color: Colors.white),
                        ))),
                Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 16, 139, 239),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(SlidingPuzzle.routeName);
                        },
                        child: Text(
                          "NUMBER SEQUENCE",
                          style: TextStyle(fontSize: 29, color: Colors.white),
                        ))),
                Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 183, 3, 237),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(ballgame
                          .routeName);
                        },
                        child: Text(
                          "BALL GAME",
                          style: TextStyle(
                            fontSize: 29,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ))),
                
              ],
            ),
          ),
        ),);
        
  }
}
