import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const  Text('Second Page'),
         elevation: 0,
        backgroundColor: Colors.red,
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: const Text('back'),
                ),
                Image.asset(
          'images/pikachu-1.jpg',
          width: 200,
          height: 200,
        )
 
            ],
          ),
            ),
      
    );
  }
}