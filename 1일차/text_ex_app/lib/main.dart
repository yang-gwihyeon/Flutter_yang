import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),

    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
    //화면 디자인 담당
      appBar: AppBar(
        title: const Text(
        'Text Exercise 01',
        ),
        backgroundColor: Colors.green[10],
        foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
                    Divider(
              height: 30,
              color: Colors.grey,
              thickness: 0.5,
            ),
              Text(
                '유비',
                ),
                Text(
                '관우',
                ),

              Text(
                '장비',
                ),

            Divider(
              height: 30,
              color: Colors.grey,
              thickness: 0.5,
            ),
              Text(
                '조조',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                ),
              ),
              Text(
                '여포',
              ),
              Text(
                '동탁',
              ),
                    Divider(
              height: 30,
              color: Colors.grey,
              thickness: 0.5,
            ),
            ],
          ),
          ),
        );
      }
    }

