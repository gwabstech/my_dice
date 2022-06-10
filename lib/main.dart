import 'package:flutter/foundation.dart';
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
        body:   DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
    const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
   var leftNumber = 1;

   var rightNumber = 5;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState((){
                  leftNumber = 3;
                  if (kDebugMode) {
                    print('dice number is $leftNumber');
                  }
                });
              },
              child:  Image(
                image: AssetImage('images/dice$leftNumber.png'),
              ),
            ),
          ),
          Expanded(

            child: TextButton(
              onPressed: (){
                setState((){
                  rightNumber = 2;
                  if (kDebugMode) {
                    print('the right number is $rightNumber');
                  }
                });
              } ,
              child:  Image(
                image: AssetImage("images/dice$rightNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
