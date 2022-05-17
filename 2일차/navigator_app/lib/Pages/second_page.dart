
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const  Text('Second Page'),
        backgroundColor: Colors.red,
        ),
        body: Center(
          child:ElevatedButton(
            onPressed: (){
              Navigator.pop(context);

            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            child: const Text('eee'),
            ),
            ),
      

    );
  }
}