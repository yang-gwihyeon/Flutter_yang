import 'package:flutter/material.dart';
import 'package:navigator_lamp_app/vol1/message.dart';


class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  late String switchLabel;
  late String switchColorLabel;
    final nameController = TextEditingController();

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
      switchLabel = "Off";
      switchValue = false;
    }
    nameController.text = Message.memo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('수정 화면'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(switchLabel),
                    Switch(
                      value: switchValue, 
                      onChanged: (value){
                        setState(() {
                          switchValue = value;
                          if(value){
                            switchLabel = "On";
                          }else{
                            switchLabel = "Off";
                          }
                        });
                      }),
                  ],
                ),
              
           
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Message.lampStatus = switchValue;
                Message.lampColor = switchColor;
                Message.memo = nameController.text;
                Navigator.pop(context);
              }, 
              child: const Text('OK'))
          ],
        ),
      ),
    );
  }
}