import 'package:flutter/material.dart';
import 'package:snackbar_app/snackbar.dart';

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
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
        backgroundColor: Colors.amberAccent,
      ),
      body: const MySnackBar(),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       // ScaffoldMessenger.of(context).showSnackBar(
      //       //   const SnackBar(
      //       //     content: Text('Elevated Button is clicked'),
      //       //     duration: Duration(seconds: 2),
      //       //     backgroundColor: Colors.red,
      //       //   ),
      //       // );
      //       SnackBarFuction(context);
      //     },
      //     child: const Text('Snackbar Button'),
      //   ),
      // ),
    );
  }

  // --- Functions
  SnackBarFuction(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Elevated Button is clicked'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      ),
    );
  }
} // End
