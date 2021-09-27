import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("DiceApp"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int leftDiceNumb=5;
  int rightDiceNumb=6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                leftDiceNumb=Random().nextInt(6)+1;
              });
            },
                child: Image.asset('images/dice$leftDiceNumb.png'),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                rightDiceNumb=Random().nextInt(6)+1;
              });
            },
                child: Image.asset('images/dice$rightDiceNumb.png'),
          )),

        ],
      ),
    );
  }
}
