import 'package:flutter/material.dart';

import 'changeToEnglish.dart';
import 'changeToPersian.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = ' تاریخ\n1400/5/25';
  bool isPersian = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.black,
        appBar: AppBar(
          title: Text('change date'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isPersian ? changeToEnglish(text) : changeToPersian(text),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isPersian = !isPersian;
                  });
                },
                child: Text(
                  !isPersian ? 'English' : 'Persian',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
