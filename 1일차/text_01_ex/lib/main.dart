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

        primarySwatch: Colors.blue,
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
      appBar: AppBar(
        title: Text(
          "Text Excercise 02"
        ),
        backgroundColor: Colors.orange,

      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Text(
              '제임스',
            ),
            SizedBox(
          width: 30,
        ),
            Text(
              '캐시',
            ),
              SizedBox(
          width: 30,
        ),
            Text(
              '캐리',
            ),
            ),
              SizedBox(
          height: 30,
          ],

        )
      ),
    );
  }
}
