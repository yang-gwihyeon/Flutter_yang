import 'package:flutter/material.dart';
import 'package:navigator_lamp_switch_app/lamp.dart';
import 'package:navigator_lamp_switch_app/lamp_item.dart';
import 'package:navigator_lamp_switch_app/switch.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    final Lamp lamp;
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
       '/' : (context) => const Home(lamp: lamp.lampColor),
       '/1st' : (context) => const SwitchPage(lamp: ,lamp.lampColor,
     },
     initialRoute: '/',
    );
  }
}

