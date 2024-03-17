// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_video_games_shop/pages/navigation.dart';
import 'package:flutter_video_games_shop/pages/my_rents.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: '/',
      routes: {
        '/' : (context) => Navigation(),
        '/rents' : (context) => MyRents()        
      },
    );
  }
}
