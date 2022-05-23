import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // Property

  late String _lampImage;
  late double _lampWidth;
  late double _lampHeight;
  late String _buttonName;
  late bool _switch;
  late String _lampSizeStaus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _lampImage = 'images/lamp_on.png';
    _lampWidth = 150;
    _lampHeight = 300;
    _buttonName = "image 확대";
    _switch = true;
    _lampSizeStaus = 'small';
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image 확대 및 축소'),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                  TextButton(
                    onPressed: () {
                      setState(() {
                        decisionLampSize();
      
                      });
                      //
                    },
                    child: Text(_buttonName),
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
      ),
    );
  }

  // -- Functions
  decisionOnOff(){
    if(_switch){
      _lampImage = 'images/lamp_on.png';
    }else{
      _lampImage = 'images/lamp_off.png';
    }
  }

  decisionLampSize(){
    if(_lampSizeStaus == 'small'){
      _lampWidth = 300;
      _lampHeight = 600;
      _buttonName = 'image 축소';
      _lampSizeStaus = 'large';
    }else{
      _lampWidth = 150;
      _lampHeight = 300;
      _buttonName = 'image 확대';
      _lampSizeStaus = 'small';
    }
  }

}