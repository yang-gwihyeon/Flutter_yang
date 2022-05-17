import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const H(),
    );
  }
}

class H extends StatelessWidget {
  const H({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text whth Column and Row'),
      ),
      body: Center(


          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.cabin_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(

                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(

                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.dangerous_outlined,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  const [
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: 
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text(
                          'Kenny',
                        ),
                    ),
                    ),
                    SizedBox(

                    ),
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text(
                        'James',
                      ),
                    ),
                    SizedBox(

                    ),
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text(
                        'Cathy',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    
  }
}
