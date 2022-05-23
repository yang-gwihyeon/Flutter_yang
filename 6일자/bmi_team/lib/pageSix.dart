import 'package:flutter/material.dart';

class pageSix extends StatefulWidget {
  const pageSix({Key? key}) : super(key: key);

  @override
  State<pageSix> createState() => _pageSixState();
}

class _pageSixState extends State<pageSix> {
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