import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Image Padding"),
      ),
      
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset(
                'images/pikachu-1.jpg',
                width: 200,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset(
                'images/pikachu-2.jpg',
                width: 200,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset(
                'images/pikachu-3.jpg',
                width: 200,
                height: 200,
              ),
            )
          ],
        )),
      ),
    );
  }
}
