import 'package:flutter/material.dart';
import 'package:navigator_pikachu_app/Pages/second_page.dart';
import 'package:navigator_pikachu_app/Pages/third_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                   Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => const SecondPage(),
            ));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Second'),
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.red,
                  ),
                );
                
              },
              child: const Text('Second Page Button'),
            ),
            ElevatedButton(
              onPressed: () {
                   Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => const ThirdPage(),
            ));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Third'),
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.red,
                  ),
                );
                
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
              child: const Text('Third Page Button'),
            ),
          ],
        ),
      ),
    );
  }
}
