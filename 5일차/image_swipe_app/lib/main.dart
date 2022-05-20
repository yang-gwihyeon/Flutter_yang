import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

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
  // Property
  late List imageName;
  late int currentImage;
  
  @override
  void initState() {
    super.initState();
    imageName = [
    'flower_01.png',
    'flower_02.png',
    'flower_03.png',
    'flower_04.png',
    'flower_05.png',
    'flower_06.png'
    ];
    currentImage = 0;

  // Timer 설치
  Timer.periodic(const Duration(seconds: 3), (Timer timer) { 
    changeImage();
  });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('Image Swiping'),
      ),
      body: SimpleGestureDetector(
        onHorizontalSwipe: _onHorizontalSwipe,
        onVerticalSwipe: _onVerticalSwipe,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                imageName[currentImage],
              ),
              Image.asset(
                'images/${imageName[currentImage]}',
                width: 350,
                height: 600,
              )
            ],
          ),
        ),
      ),
    );
  }


// -- Function
_onHorizontalSwipe(SwipeDirection direction){
  setState(() {
    if(direction == SwipeDirection.left){
      currentImage += 1;
      if(currentImage >= imageName.length){
        currentImage = 0;
      }  
    }else{
      currentImage -= 1;
        if(currentImage < 0){
        currentImage = imageName.length - 1;
    }
    }
  });
}

_onVerticalSwipe(SwipeDirection direction){
  setState(() {
    if(direction == SwipeDirection.down){
       currentImage += 1;
      if(currentImage >= imageName.length){
        currentImage = 0;
      }  
    }else{
      currentImage -= 1;
        if(currentImage < 0){
        currentImage = imageName.length - 1;
    }
    }
  });

}

changeImage(){
  setState((){
    currentImage++;

    if(currentImage >= imageName.length){
      currentImage = 0;
    }
  });
}

}// End