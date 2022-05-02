import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          height: 740,
          child: Stack(children: [
            Image.asset("lib/images/test.jpg"),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "WELCOME",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Email"),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 13, horizontal: 65),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          side: BorderSide(
                              color: Color.fromARGB(255, 218, 156, 24),
                              width: 2),
                        ),
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                              color: Color.fromARGB(255, 218, 156, 24),
                              fontSize: 20),
                        )),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 218, 156, 24),
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "Create account",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
