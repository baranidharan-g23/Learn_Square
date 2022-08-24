import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lmp/coggame/third_dupe.dart';
import 'blind/second_dupe.dart';
import 'coggame/third_dupe.dart';
import 'mute/fourth_dupe.dart';
import 'deaf/fifth_dupe.dart';
import 'bdd/sixth_dupe.dart';
import 'lang_trans/seventh_dupe.dart';

void main()  {
  runApp(MyApp ());
}

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        blindd.routeName:(_)=>blindd(),
        cog_game.routeName:(_)=>cog_game(),
        mutee.routeName:(_)=>mutee(),
        deaff.routeName:(_)=>deaff(),
        bddd.routeName:(_)=>bddd(),
        lang.routeName:(_)=>lang(),
      },
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Color.fromARGB(206, 212, 167, 167),
        splash: Image.asset("assets/mainlogo.png", width: 700, height: 600),
        nextScreen: Home(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}

class Home extends StatelessWidget {
  //const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Color.fromARGB(255, 7, 156, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          toolbarHeight: 80,
          actions: [
            Padding(
              padding:
                  const EdgeInsets.only(right: 25, bottom: 10, top: 8, left: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(27),
                child: Image.asset(
                  "assets/logo1.png",
                  scale: 0.3,
                ),
              ),
            ),
          ],
          backgroundColor: Color.fromARGB(211, 20, 13, 117),
          title: Text(
            'Learn Square',
            style: TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 236, 230, 230)),
          ),
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/back.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: null /* add child content here */,
          ),
          // > Baranidharan CS Gct:
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 26, bottom: 15, top: 30),
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                  width: 120,
                                  height: 60,
                                  child: ElevatedButton.icon(
                                      icon: Icon(Icons.visibility_outlined),
                                      style: ButtonStyle(
                                        overlayColor: MaterialStateProperty.all<
                                                Color>(
                                            Color.fromARGB(115, 243, 33, 226)),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color.fromARGB(
                                                    255, 252, 192, 12)),
                                      ),
                                      onPressed: () {Navigator.of(context)
                                        .pushNamed(blindd.routeName);},
                                      label: Text(
                                        "Blind",
                                        style: TextStyle(fontSize: 25),
                                      ))),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 26, bottom: 15, top: 30),
                        child: SizedBox(
                            width: 120,
                            height: 60,
                            child: ElevatedButton.icon(
                                icon: Icon(Icons.hearing),
                                style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(115, 243, 33, 226)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 252, 192, 12)),
                                ),
                                onPressed: () {
                                  Navigator.of(context)
                                        .pushNamed(deaff.routeName);
                                },
                                label: Text(
                                  "Deaf",
                                  style: TextStyle(fontSize: 25),
                                ))),
                      ),
                      //Spacer()
                    ],
                  ),
                  //Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: SizedBox(
                        width: 140,
                        height: 60,
                        child: ElevatedButton.icon(
                            icon: Icon(Icons.sign_language),
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(115, 243, 33, 51)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 89, 0, 206)),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                        .pushNamed(mutee.routeName);
                            },
                            label: Text(
                              "Dumb",
                              style: TextStyle(fontSize: 27),
                            ))),
                  ),
                  //Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 15),
                    child: SizedBox(
                        width: 300,
                        height: 60,
                        child: ElevatedButton.icon(
                          label: Text(
                            "  BDD",
                            style: TextStyle(fontSize: 30),
                          ),
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(115, 243, 33, 226)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 252, 192, 12)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(17)))),
                          onPressed: () {
                            Navigator.of(context)
                                        .pushNamed(bddd.routeName);
                          },
                          icon: Icon(
                            Icons.vibration,
                            size: 50,
                          ),
                        )),
                  ),
                  // Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 45),
                    child: SizedBox(
                      width: 300,
                      height: 60,
                      child: ElevatedButton.icon(
                          icon: Icon(Icons.language),
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(115, 243, 33, 51)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 89, 0, 206)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(17)))),
                          onPressed: () {
                            Navigator.of(context)
                                        .pushNamed(lang.routeName);
                          },
                          label: Text(
                            "Language Translator",
                            style: TextStyle(fontSize: 25),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 35),
                    child: SizedBox(
                        width: 190,
                        height: 60,
                        child: ElevatedButton.icon(
                            icon: Icon(Icons.accessibility_new),
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(115, 243, 33, 226)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 252, 192, 12)),
                            ),
                            onPressed: () {},
                            label: Text(
                              "Blind & Dumb",
                              style: TextStyle(fontSize: 21.5),
                            ))),
                  ),
                  // Spacer(),
                  Row(
                    children: [
                      //    Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, top: 15, bottom: 15),
                        child: SizedBox(
                            width: 150,
                            height: 60,
                            child: ElevatedButton.icon(
                                icon: Icon(Icons.accessibility_new_outlined),
                                style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(115, 243, 33, 51)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 89, 0, 206)),
                                ),
                                onPressed: () {},
                                label: Text(
                                  "Deaf & Blind",
                                  style: TextStyle(fontSize: 16),
                                ))),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 16.0, top: 15, bottom: 15),
                        child: SizedBox(
                            width: 150,
                            height: 60,
                            child: ElevatedButton.icon(
                                icon: Icon(Icons.accessibility_outlined),
                                style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(115, 243, 33, 51)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 89, 0, 206)),
                                ),
                                onPressed: () {},
                                label: Text(
                                  "Deaf & Dumb",
                                  style: TextStyle(fontSize: 16),
                                ))),
                      ),
                      //Spacer()
                    ],
                  ),
                  //Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 40),
                    child: SizedBox(
                        width: 300,
                        height: 60,
                        child: ElevatedButton.icon(
                          label: Text(
                            "Cognitive Impairment",
                            style: TextStyle(fontSize: 25),
                          ),
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(115, 243, 33, 226)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 252, 192, 12)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(17)))),
                          onPressed: () {
                            Navigator.of(context)
                                        .pushNamed(cog_game.routeName);
                          },
                          icon: Icon(
                            Icons.gamepad_rounded,
                            size: 50,
                          ),
                        )),
                  ),
                  //Spacer(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
