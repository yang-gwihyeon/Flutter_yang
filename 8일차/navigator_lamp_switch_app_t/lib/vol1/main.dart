import 'package:flutter/material.dart';
import 'package:navigator_lamp_switch_app_t/vol1/controller.dart';
import 'package:navigator_lamp_switch_app_t/vol1/message.dart';


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
  late String _lampImage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _lampImage = 'images/lamp_on.png';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('g'),
        actions: [
          IconButton(
            onPressed:(){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) {
                    return Controller();
                  }),).then((value) => getData());
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
    body: Center(
      child: Image.asset(
        _lampImage
        
      ),
    ),

    );
  }


  // ----function
  getData(){
    setState(() {
          if(Message.lampStatus){
      if(Message.lampColor){
        _lampImage = 'images/lamp_on.png';
      }else{
        _lampImage = 'images/lamp_red.png';
      }
    }else{
      _lampImage = 'images/lamp_on.png';
    }
      
    });

  }
}