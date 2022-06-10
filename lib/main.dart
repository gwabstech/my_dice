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
        children:  <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print("am clicked");
              },
              child: const Image(
                image: AssetImage("images/dice1.png"),
              ),
            ),
          ),
          Expanded(

            child: TextButton(
              onPressed: (){
                print("AM clicked again but second btn");
              } ,
              child: const Image(
                image: AssetImage("images/dice2.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
