import 'package:alert_dialog_ex_app/Pages/screen.dart';
import 'package:alert_dialog_ex_app/Pages/screen1st.dart';
import 'package:alert_dialog_ex_app/Pages/screen2nd.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
       '/' : (context) => const Screen(),
       '/1st' : (context) => const Screen1st(),
       '/2nd' : (context) {
         return const Screen2nd();
       },
     },
     initialRoute: '/',
    );
  }
}

