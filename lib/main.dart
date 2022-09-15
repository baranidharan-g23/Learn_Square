import 'package:flutter/material.dart';
import './gridview.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Square',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: splash(),
    );
  }
}

class splash extends StatefulWidget {
  //const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/frontlogo.png",
                  height: 180,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const CupertinoActivityIndicator(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            const SizedBox(
              height: 190,
            ),
            Image.asset(
              "assets/moe.png",
              height: 50,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          shadowColor: Color.fromARGB(255, 7, 156, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          toolbarHeight: 80,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(colors: [Colors.red, Colors.pink])),
          ),
          actions: [
            Padding(
              padding:
                  const EdgeInsets.only(right: 25, bottom: 10, top: 8, left: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(27),
                child: Image.asset(
                  "assets/images/logo1.png",
                  scale: 0.3,
                ),
              ),
            ),
          ],
          title: Text(
            'Learn Square',
            style: TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        body: BasicGridView(),
      ),
    );
  }
}
