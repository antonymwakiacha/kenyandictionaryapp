import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(252, 252, 249, 232),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            width: 200,
          ),
          Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.only(left: 100, right: 50),
            child: Image.asset("lib/images/logoc.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            //margin: EdgeInsets.only(left: 70, right: 50),
            margin: EdgeInsets.only(
              right: 0,
              left: 20,
            ),
            padding: EdgeInsets.only(
              left: 110,
              right: 110,
              top: 20,
              bottom: 20,
            ),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
                border: Border()),
            child: Text(
              "Explore/Search ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: 'sans-serif',
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 250,
                  //color: Colors.grey,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 10,
                          top: 5,
                        ),
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Taliban',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Text(
                                "To be strong,focused annd unshakable in a tough situation.",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(
                          left: 64,
                          right: 55,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('IDIOM OF THE DAY'),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "January 16,2025",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),

                Container(
                  width: 250,
                  //color: Colors.grey,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 10,
                          top: 5,
                          left: 75,
                          right: 75,
                        ),
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Kinde',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 10,
                                right: 10,
                                bottom: 15,
                              ),
                              child: Text(
                                "10 Shilling.",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(
                          left: 50,
                          right: 50,
                          top: 20,
                          bottom: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('WORD OF THE DAY'),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "January 16,2025",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Container(
                //   width: 280,
                //   color: Colors.blue,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
