import 'package:flutter/material.dart';

class Screen1st extends StatelessWidget {
  const Screen1st({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Mail'),
      backgroundColor:  Colors.green,
    ),
    body:  Column(
      children: 
        [Text(' 유비에게 보낸 메일'
        ),
        Text(' 장비에게 보낸 메일'
        ),
        Text(' 관우에게 보낸 메일'
        ),
      ],
    ),
    );
  }
}