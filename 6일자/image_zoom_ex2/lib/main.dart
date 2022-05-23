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
  // Property

  late String _lampImage;
  late double _lampWidth;
  late double _lampHeight;

  late bool _switch;
  late bool _zoom;
  late bool _red;
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _lampImage = 'images/lamp_on.png';
    _lampWidth = 150;
    _lampHeight = 300;

    _switch = true;
    _zoom = false;
    _red = false;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image 확대 및 축소'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 650,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _lampImage,
                    width: _lampWidth,
                    height: _lampHeight,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                          Column(
                  children: [
                    Text('전구 색깔'),
                    Switch(
                      value: _red, 
                      onChanged: (value){
                        setState(() {
                          _red = value;
                          decisionOnOff();
                        });

                      }),
                  ],
                ),
                    SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text('전구 확대'),
                    Switch(
                      value: _zoom, 
                      onChanged: (value){
                        setState(() {
                          _zoom = value;
                          decisionLampSize();
                        });

                      }),
                  ],
                ),

                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text('전구 스위치'),
                    Switch(
                      value: _switch,
                      onChanged: (value) {
                        setState(() {
                          _switch = value;
                          decisionOnOff();
                        });
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  // -- Functions
  decisionOnOff(){
    if(_switch){
      if(_red){
        _lampImage = 'images/lamp_red.png';
      }else{
      _lampImage = 'images/lamp_on.png';
      }
    }else{
      _lampImage = 'images/lamp_off.png';
    }
  }

  decisionLampSize(){
    if(_zoom == true){
      _lampWidth = 300;
      _lampHeight = 600;

    }else{
      _lampWidth = 150;
      _lampHeight = 300;

    }
  }


}
