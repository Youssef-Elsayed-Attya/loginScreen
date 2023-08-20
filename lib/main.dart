import 'package:firsttest/chat.dart';
import 'package:firsttest/home_screen.dart';
import 'package:firsttest/nav_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}


//stateless
//stateful

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        'navScreen': (context) =>navScreen(),

      } ,
      home: navScreen(),
    ) ;

  }

}