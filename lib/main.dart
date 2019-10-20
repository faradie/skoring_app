import 'package:flutter/material.dart';
import 'package:skoring_app/scoreHome.dart';

void main(){
  runApp(MyScore());
}

class MyScore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Skor Basket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.orange,
      ),
      home: ScoreHome(),
    );
  }
}

