import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigator_lamp_switch_app_t/vol1/message.dart';

class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  late String switchLabel;
  late String switchColorLabel;


  late bool switchValue;
  late bool switchColor;

  @override
  void initState() {

    super.initState();

    if(Message.lampColor){
      switchColorLabel = "Yellow";
      switchColor = true;
    }else{
      switchColorLabel = 'Red';
      switchColor = false;
    }


    if(Message.lampStatus){
      switchLabel = "On";
      switchValue = true;
    }else{
      switchLabel = 'Off';
      switchValue = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('수정 화면'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [Text(switchColorLabel),
            Switch(
              value: switchColor, 
              onChanged: (value){
                switchColor = value;
                if(value){
                  switchColorLabel = "Yellow";
                }else{
                  switchColorLabel = "Red";
                }
              })],),
              SizedBox(
                height: 20,
              ),
              Row(children: [Text(switchLabel),
            Switch(
              value: switchValue, 
              onChanged: (value){
                switchValue = value;
                if(value){
                  switchLabel = "On";
                }else{
                  switchLabel = "Off";
                }
              })],),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  Message.lampStatus = switchValue;
                  Message.lampColor = switchColor;
                  Navigator.pop(context);
                }, 
                child: Text('OK'))
                ]
        ),
      ),
    );
  }
}