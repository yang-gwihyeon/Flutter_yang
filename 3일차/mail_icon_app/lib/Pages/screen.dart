import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
                backgroundColor:  Colors.amberAccent,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
          }, 
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: (){
            Navigator.pushNamed(context, '/1st');}, 
            icon: const Icon(Icons.email),
          ),
          IconButton(
            onPressed: (){
            Navigator.pushNamed(context, '/2nd');}, 
            icon: const Icon(Icons.email_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/1st');
            },
            style: ButtonStyle(
              backgroundColor:  MaterialStateProperty.all(Colors.green),
            ),
            child: const Text('보낸메일함')
            ),
            ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/2nd');
            },
            style: ButtonStyle(
              backgroundColor:  MaterialStateProperty.all(Colors.pink),
            ),
            child: const Text('받은메일함')
            ),
          ],
        ),
      ),
    );
  }
}
