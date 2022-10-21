import 'package:flutter/material.dart';
import 'package:game/fristScreen.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>First_Screen(),
      },
    ),
  );
}