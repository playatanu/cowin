import 'package:cowin/screen/font.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.amberAccent,
                child: Center(
                    child: Text(
                  'CoWin',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              )),
          Expanded(flex: 10, child: Font()),
        ],
      )),
    );
  }
}
