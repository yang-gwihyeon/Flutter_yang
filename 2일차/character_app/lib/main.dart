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
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        title: Text('영웅 Card'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/Lee.jpg'),
                radius: 50,
              ),
           
              Text('성웅',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  letterSpacing: 5,
                ),
                ),
                Text('이순신 장군',
                    style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                ),),
                Text('전적'),
                Text('62전 62승'),
          
            
           
            
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.check_circle_outlined,
                            color: Colors.black,
                          ),
                            Icon(
                            Icons.check_circle_outlined,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.check_circle_outlined,
                            color: Colors.black,
                          ),
                            Icon(
                            Icons.check_circle_outlined,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.check_circle_outlined,
                            color: Colors.black,
                          ),
                            Icon(
                            Icons.check_circle_outlined,
                            color: Colors.black,
                          ),
                        ],
                        children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('옥포해전'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('옥포해전'),
                      ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text('옥포해전'),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('옥포해전'),
                      ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text('옥포해전'),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('옥포해전'),
                      ),
                    ],
                  ),
                ),
            
       
            Image.asset(
          'images/turtle.gif',
          width: 200,
          height: 200,
        ),
        ],         
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('옥포해전'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('옥포해전'),
                      ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text('옥포해전'),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('옥포해전'),
                      ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text('옥포해전'),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('옥포해전'),
                      ),
                    ],
                  ),
                ),
            
       
            Image.asset(
          'images/turtle.gif',
          width: 200,
          height: 200,
        ),
        ],         
      ),

    );
  }
}
