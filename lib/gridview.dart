import 'package:flutter/material.dart';
import 'blind/second_dupe.dart';
import 'coggame/third_dupe.dart';
import 'mute/fourth_dupe.dart';
import 'deaf/fifth_dupe.dart';
import 'bdd/sixth_dupe.dart';
import 'lang_trans/seventh_dupe.dart';

class route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: BasicGridView(),
      routes: {
        Blindd.routeName: (_) => Blindd(),
        cog_game.routeName: (_) => cog_game(),
        mutee.routeName: (_) => mutee(),
        deaff.routeName: (_) => deaff(),
        bddd.routeName: (_) => bddd(),
        lang.routeName: (_) => lang(),
      },
    );
  }
}

class BasicGridView extends StatefulWidget {
  @override
  State<BasicGridView> createState() => _BasicGridViewState();
}

class _BasicGridViewState extends State<BasicGridView> {
  //const BasicGridView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: GridView(
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              mainAxisExtent: 285),
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                shadowColor: Colors.green,
                color: Colors.lightBlueAccent,
                child: SizedBox(
                  width: 200,
                  height: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/blind.jpg'),
                              fit: BoxFit.fill,
                            ),
                            gradient: LinearGradient(
                                colors: [Colors.red, Colors.pink]),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Blindd()));
                            },
                            title: Text(
                              'Blind',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.green[900],
                                fontWeight: FontWeight.w500,
                              ),
                            )
                            // subtitle: const Text(
                            //   "It will navigate to the blind page",
                            //   textAlign: TextAlign.center,
                            // ),
                            )
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
            /***************BLIND***************** */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                shadowColor: Colors.green,
                color: Colors.amber,
                child: SizedBox(
                  width: 200,
                  height: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/deaf.jpg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            deaff()));
                              }, //changed by barani
                              child: Text(
                                'Deaf',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.green[900],
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          // subtitle: const Text(
                          //   "It will navigate to the blind page",
                          //   textAlign: TextAlign.center,
                          // ),
                        )
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
            /*****************Deaf***************** */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                shadowColor: Colors.green,
                color: Colors.greenAccent,
                child: SizedBox(
                  width: 200,
                  height: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/sign.jpg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            mutee()));
                              },
                              child: Text(
                                'Dumb',
                                style: TextStyle(
                                  fontSize: 27,
                                  color: Colors.green[900],
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          // subtitle: const Text(
                          //   "It will navigate to the blind page",
                          //   textAlign: TextAlign.center,
                          // ),
                        )
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
            /*****************Dumb************** */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                shadowColor: Colors.green,
                color: Colors.redAccent,
                child: SizedBox(
                  width: 200,
                  height: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/co_im.jpg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            cog_game()));
                              },
                              child: Text(
                                'Cognitive Impairment',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          // subtitle: const Text(
                          //   "It will navigate to the blind page",
                          //   textAlign: TextAlign.center,
                          // ),
                        )
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
            /******************Cognitive impairment**************** */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                shadowColor: Colors.green,
                color: Colors.cyan,

                child: SizedBox(
                  width: 200,
                  height: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/bdd.jpg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            bddd()));
                              },
                              child: Text(
                                'BDD',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 85, 23, 23),
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          // subtitle: const Text(
                          //   "It will navigate to the blind page",
                          //   textAlign: TextAlign.center,
                          // ),
                        )
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
            /*********************BDD****************** */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                shadowColor: Colors.green,
                color: Colors.pinkAccent,
                child: SizedBox(
                  width: 200,
                  height: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/bldm.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Blindd()));
                              },
                              child: Text(
                                'Blind & Dumb',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          // subtitle: const Text(
                          //   "It will navigate to the blind page",
                          //   textAlign: TextAlign.center,
                          // ),
                        )
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
            /***********************Blind& Dumb********************** */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                shadowColor: Colors.green,
                color: Colors.deepPurpleAccent,
                child: SizedBox(
                  width: 200,
                  height: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/bldf.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ListTile(
                          title: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Blind & Deaf',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          // subtitle: const Text(
                          //   "It will navigate to the blind page",
                          //   textAlign: TextAlign.center,
                          // ),
                        )
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
            /****************blind & deaf**************** */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                shadowColor: Colors.green,
                color: Colors.limeAccent,
                child: SizedBox(
                  width: 200,
                  height: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/dfdm.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ListTile(
                          title: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Deaf & Dumb',
                                style: TextStyle(
                                  fontSize: 27,
                                  color: Color.fromARGB(255, 0, 0, 2),
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          // subtitle: const Text(
                          //   "It will navigate to the blind page",
                          //   textAlign: TextAlign.center,
                          // ),
                        )
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
            /************deaf& dumb************ */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                shadowColor: Colors.green,
                color: Colors.blueAccent,
                child: SizedBox(
                  width: 200,
                  height: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/translator.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            lang()));
                              },
                              child: Text(
                                'Language Translator',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.green[900],
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          // subtitle: const Text(
                          //   "It will navigate to the blind page",
                          //   textAlign: TextAlign.center,
                          // ),
                        )
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
            /**************Language Translator**************** */
          ],
        ),
      ),
    );
  }
}
