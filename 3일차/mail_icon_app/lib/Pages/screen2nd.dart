import 'package:flutter/material.dart';

class Screen2nd extends StatelessWidget {
  const Screen2nd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Received Mail'),
      backgroundColor:  Colors.red,
    ),
    body:  Column(
      children: 
        [
        Text('유비에게서 온 메일'
        ),
        Text('장비에게서 온 메일'
        ),
        Text('관우에게서 온 메일'
        ),
      ],
    ),
    );
  }
}