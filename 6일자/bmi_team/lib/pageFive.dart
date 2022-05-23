import 'package:flutter/material.dart';

class pageFive extends StatefulWidget {
  const pageFive({Key? key}) : super(key: key);

  @override
  State<pageFive> createState() => _pageFiveState();
}

class _pageFiveState extends State<pageFive> {
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