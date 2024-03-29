import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

// stl 

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Text Excercise 01"
        ),
        centerTitle: false,
        backgroundColor: Colors.green,
      ),
  body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
        Text(
          '유비',
        ),
        Text(
          '관우',
        ),
        Text(
          '장비',
        ),

        SizedBox(
          height: 30,
        ),
        Text(
          '조조',
        ),
        Text(
          '동탁',
        ),
        Text(
          '초선',
        ),
        
    ],

  ),
  )
    );
  }
}