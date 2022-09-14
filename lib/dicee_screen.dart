import 'package:flutter/material.dart';
import 'dart:math';

class DiceeScreen extends StatefulWidget {
  @override
  State<DiceeScreen> createState() => _DiceeScreenState();
}

class _DiceeScreenState extends State<DiceeScreen> {
   int leftDiceNumber =1;
   int rightDiceNumber=1;
   void changeDiceFace (){
     setState(() {
       rightDiceNumber=Random().nextInt(6)+1;
       leftDiceNumber=Random().nextInt(6)+1;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            'Dicee',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                     changeDiceFace();
                    //leftDiceNumber=5;
                  },
                    child: Image.asset(
                  'assets/images/dice$leftDiceNumber.png',
                )),
              ),
              SizedBox(
                width: 24.0,
              ),
              Expanded(
                child: GestureDetector(
                    onTap: (){
                    changeDiceFace();
                      //leftDiceNumber=5;
                    },
                    child: Image.asset(
                      'assets/images/dice$rightDiceNumber.png',
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
