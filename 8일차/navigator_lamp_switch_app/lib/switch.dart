import 'package:flutter/material.dart';
import 'package:navigator_lamp_switch_app/lamp_item.dart';


class SwitchPage extends StatefulWidget {
  final Lamp lamp;
  
  const SwitchPage({Key? key, required this.lamp}) : super(key: key);

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {

  late String red2;
  late String onoff2;

  late bool onoffb;
  late bool redb;

  @override
  void initState() {
    red2 = 'images/lamp_red.png';
    onoff2 = 'images/lamp_off.png';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('스위치'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                         Switch(
                      value: onoffb,
                      onChanged: (value) {
                        setState(() {
                          onoffb = value;
                        });
                      },
                    ),


                           Switch(
                      value: redb,
                      onChanged: (value) {
                        setState(() {
                          redb = value;
                        });
                      },
                    ),
                    ElevatedButton(
                      onPressed: (){
                        _onOffRed();

                     Navigator.pushNamed(context, '/1st');
                      }, 
                      child: Text('확인'))
        ],
      ),

    );
  }


  _onOffRed() {
    if(onoffb == true && redb == true){
      var image = 'images/lamp_red.png';
      widget.lamp.lampColor = image;
    }
       if(onoffb == true && redb == false){
      var image = 'images/lamp_on.png';
      widget.lamp.lampColor = image;
    }
          if(onoffb == false){
      var image = 'images/lamp_off.png';
      widget.lamp.lampColor = image;
    }

  }
}