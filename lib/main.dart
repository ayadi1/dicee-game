import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[700],
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text('Dicee Game App'),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int num1 = 1;
  int num2 = 2;

  @override
  Widget build(BuildContext context) {
    var rand1 = 1 + Random().nextInt(7 - 1);
    var rand2 = 1 + Random().nextInt(7 - 1);

    return InkWell(
      onTap: () {
        setState(() {
          num1 = rand1;
          num2 = rand2;
        });
      },
      child: Container(
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Image.asset(
                  "images/dice$num1.png",
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Expanded(
                child: Image.asset(
                  "images/dice$num2.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
