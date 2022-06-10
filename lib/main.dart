import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text(
            'Dice',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Image(
              image: AssetImage("images/dice1.png"),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Image(
              image: AssetImage("images/dice2.png"),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
