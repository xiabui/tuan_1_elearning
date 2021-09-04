import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 60),
                    child: Text(
                      "Hello.",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    )),
        
                SizedBox(height: 100,),
        
                Text(
                  "username".toUpperCase()
                ),
                TextField(),
                SizedBox(height: 40,),
                Text(
                  "password".toUpperCase()
                ),
                TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                ),
        
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Forgot password?",
                    textAlign: TextAlign.right,
                  ),
                ),
        
                SizedBox(height: 40,),
        
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff00A19D),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 18
                      ),
                    ),
                  ),
                ),
        
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 60),
                  child: Text(
                    "Forgot password?",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
