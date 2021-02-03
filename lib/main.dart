import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF82798F),
        appBar: AppBar(
          backgroundColor: Color(0xFFD8C1FA),
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 22,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ),
        body: _DisPage(),
      ),
    ),
  );
}

class _DisPage extends StatefulWidget {
  @override
  _DisMState createState() => _DisMState();
}

class _DisMState extends State<_DisPage> {
  var leftDiceNumber;
  var rightNumber;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  rightNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('assets/image/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightNumber = Random().nextInt(6) + 1;
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('assets/image/dice$rightNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
