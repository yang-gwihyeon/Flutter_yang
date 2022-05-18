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

      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Property


  late String _buttonState;
  late String _buttonTitle;
  late Color _buttonColor;

  @override
  void initState() {
    _buttonState = 'OFF';
    _buttonTitle = '버튼을 누르세요';
    _buttonColor = Colors.red;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                _onClick();

              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(_buttonColor)
              ), 
              child: Text('$_buttonTitle'),

            ),
            Text('버튼 상태 : $_buttonState'),
       
        
          ],
        ),
      ),
    );
  }

// -- function
_onClick(){
  setState(() {
    if(_buttonState == 'OFF'){
 _buttonState = "ON";
    }else{
       _buttonState = "OFF";
    }
        if(_buttonState == 'OFF'){
 _buttonTitle= "버튼을 누르세요";
 _buttonColor= Colors.red;
    }else{
       _buttonTitle = "Press";
       _buttonColor= Colors.blue;
    }


  });
  print(_buttonState);
}

}

