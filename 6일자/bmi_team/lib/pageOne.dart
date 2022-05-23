import 'package:flutter/material.dart';

class pageOne extends StatefulWidget {
  const pageOne({Key? key}) : super(key: key);

  @override
  State<pageOne> createState() => _pageOneState();
}

class _pageOneState extends State<pageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        title: Text('OnePage Page'),
      
      ),
      body: Center(
        child: Text('세번째 페이지'),
      ),

    );
  }
}