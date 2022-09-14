import 'package:dicee/dicee_screen.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(MyApp(
  ));
}


class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  DiceeScreen()     ,
    );
  }
}