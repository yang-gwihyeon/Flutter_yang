import 'package:flutter/material.dart';

class pageFour extends StatefulWidget {
  const pageFour({Key? key}) : super(key: key);

  @override
  State<pageFour> createState() => _pageFourState();
}

class _pageFourState extends State<pageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        title: Text('ThreePage Page'),
      
      ),
      body: Center(
        child: Text('두번째 페이지'),
      ),

    );
  }
}