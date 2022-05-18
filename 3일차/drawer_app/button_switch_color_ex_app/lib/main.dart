import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool switchValue;
  late Color _buttonColor;

  @override
  void initState() {
    // TODO: implement initState
    switchValue = false;
    _buttonColor = Colors.blue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(_buttonColor)),
              child: Text('Flutter'),
            ),
            Switch(
              value: switchValue, // 보여지는 값
              onChanged: (value) {
                // 변경하는 값
                setState(
                  () {
                    switchValue = value;
                    if (switchValue == false) {
                      _buttonColor = Colors.blue;
                    } else {
                      _buttonColor = Colors.red;
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
