import 'package:flutter/material.dart';

class pageThree extends StatefulWidget {
  const pageThree({Key? key}) : super(key: key);

  @override
  State<pageThree> createState() => _pageThreeState();
}

class _pageThreeState extends State<pageThree> {
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