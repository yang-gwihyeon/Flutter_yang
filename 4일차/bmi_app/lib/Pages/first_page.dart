import 'package:bmi_app/Pages/second_page.dart';
import 'package:bmi_app/Pages/third_page.dart';
import 'package:bmi_app/name.dart';
import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI '),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('BMI Calc'),
               const SizedBox(
                  height: 30,
                ),
            ElevatedButton(
              onPressed: () {
                   Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => const SecondPage(),
            ));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Korea'),
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.red,
                  ),
                );
                
              },
              child: const Text('한국 기준'),
            ),
             const SizedBox(
                  height: 30,
                ),
            ElevatedButton(
              onPressed: () {
                name.userName = '바보';
                   Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => const ThirdPage(),
            ));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('WHO'),
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
              child: const Text('국제 기준'),
            ),
          ],
        ),
      ),
    );
  }
}
