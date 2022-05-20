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
  late int previewImage;

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
    previewImage = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
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
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.purple,
                          width: 10,
                        ),
                      ),
                      child: Image.asset(
                        'images/${imageName[currentImage]}',
                        width: 400,
                        height: 600,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 290,
                    top: 16,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber, width: 5)),
                      child: Image.asset(
                        'images/${imageName[previewImage]}',
                        fit: BoxFit.fill,
                        width: 100,
                        height: 150,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _backButton();
                      },
                      child: const Text('<< 뒤')),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _frontButton();
                      },
                      child: const Text('앞 >>')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

// -- Function
  _onHorizontalSwipe(SwipeDirection direction) {
    setState(() {
      if (direction == SwipeDirection.left) {
        currentImage += 1;
        if (currentImage >= imageName.length) {
          currentImage = 0;
        }
      } else {
        currentImage -= 1;
        if (currentImage < 0) {
          currentImage = imageName.length - 1;
        }
      }
    });
  }

  _onVerticalSwipe(SwipeDirection direction) {
    setState(() {
      if (direction == SwipeDirection.down) {
        currentImage += 1;
        if (currentImage >= imageName.length) {
          currentImage = 0;
        }
      } else {
        currentImage -= 1;
        if (currentImage < 0) {
          currentImage = imageName.length - 1;
        }
      }
    });
  }

  _backButton() {
    setState(() {
      currentImage -= 1;
      previewImage = currentImage + 1;

      if (currentImage < 0) {
        currentImage = imageName.length - 1;
      }
      if (previewImage < 0) {
        previewImage = imageName.length - 1;
      }
    });
  }

  _frontButton() {
    setState(() {
      currentImage += 1;
      previewImage = currentImage + 1;

      if (currentImage >= imageName.length) {
        currentImage = 0;
      }
      if (previewImage >= imageName.length) {
        previewImage = 0;
      }
      if (currentImage == 0) {
        previewImage = 1;
      }
    });
  }
}// End