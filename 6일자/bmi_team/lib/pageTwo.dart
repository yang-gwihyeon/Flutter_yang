import 'package:flutter/material.dart';

class pageTwo extends StatefulWidget {
  const pageTwo({Key? key}) : super(key: key);

  @override
  State<pageTwo> createState() => _pageTwoState();
}

class _pageTwoState extends State<pageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        title: Text('TwoPage Page'),
      
      ),
      body: Center(
        child: Text('두번째 페이지'),
      ),

    );
  }
}