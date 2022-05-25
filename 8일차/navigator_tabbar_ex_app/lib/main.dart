import 'package:flutter/material.dart';
import 'package:navigator_tabbar_ex_app/main2.dart';
import 'package:navigator_tabbar_ex_app/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
       '/' : (context) => const MyHomePage(),
       '/1st' : (context) => const Home(),

     },
     initialRoute: '/',
    );
  }
}

