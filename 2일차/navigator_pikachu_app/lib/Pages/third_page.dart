import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const  Text('Third Page'),
        backgroundColor: Colors.purple,
         elevation: 0,
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
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                ),
                child: const Text('back'),
                ),
                Image.asset(
          'images/pikachu-2.jpg',
          width: 200,
          height: 200,
        )
            ],
          ),
            ),
      

    );
  }
}