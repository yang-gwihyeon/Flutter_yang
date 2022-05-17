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

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print('Text Button');
              },
              onLongPress: () {
                print("Long pressed text button");
              },
              style: TextButton.styleFrom(
                primary: Colors.red,
              ),
              child: const Text('Text Button', style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
              ),
              child: const Text('eBorder'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                  side: BorderSide(color: Colors.black, width: 2.0)),
              child: const Text(
                'Outlined button',
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              //
              icon: const Icon(
                Icons.home,
              ),
              label: const Text('Go to home'),
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                size: 20,
              ),
              label: const Text('Go to home'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: const Size(200, 100),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
              ),
              label: const Text('Go to home'),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                onPressed: () {
                  print('Text Button');
                },
                onLongPress: () {
                  print("Long pressed text button");
                },
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
                child:
                    const Text('Text Button', style: TextStyle(fontSize: 15)),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: const Text('ElevatiorButton', style: TextStyle(fontSize: 15)),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
