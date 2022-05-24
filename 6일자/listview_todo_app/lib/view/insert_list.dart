import 'package:flutter/material.dart';
import 'package:listview_todo_app/model/message.dart';


class InsertList extends StatefulWidget {
  const InsertList({Key? key}) : super(key: key);

  @override
  State<InsertList> createState() => _InsertListState();
}

class _InsertListState extends State<InsertList> {
  late TextEditingController textEditingController;
  late bool switchValue; 
    late bool switchValue2;
      late bool switchValue3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController = TextEditingController();
    switchValue = true;
    switchValue2 = false;
    switchValue3 = false;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add View'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('구매'),
               Switch(
          value: switchValue, // 보여지는 값
          onChanged: (value){ // 변경하는 값
          setState(() {
            if(switchValue2==false && switchValue3 ==false){
              switchValue = true;
              value = true;
            }else{
              switchValue = value;
              switchValue2 = false;
              switchValue3 = false;
            }
          });
          },),
                      Image.asset(
                        'images/cart.png',
                        width: 50,
                        height: 50,
                      ),
                ],
              ),
                    Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('약속'),
               Switch(
          value: switchValue2, // 보여지는 값
          onChanged: (value){ // 변경하는 값
          setState(() {
            if(switchValue==false && switchValue3==false && value == false){
              switchValue = true;
              switchValue2 = false;
            }else{
            switchValue2 = value;
            switchValue = false;
            switchValue3 = false;
            }
        
          });
          },),
                      Image.asset(
                        'images/clock.png',
                        width: 50,
                        height: 50,
                      ),
                ],
              ),
                    Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('스터디'),
               Switch(
          value: switchValue3, // 보여지는 값
          onChanged: (value){ // 변경하는 값
          setState(() {
            if(switchValue ==false && switchValue2 ==false && value ==false){
              switchValue = true;
              switchValue3 = false;
            }else{
            switchValue3 = value;
            switchValue = false;
            switchValue2 = false;
            }
          
          });
          },),
                      Image.asset(
                        'images/pencil.png',
                        width: 50,
                        height: 50,
                      ),
                ],
              ),
             TextField(
               controller: textEditingController,
               decoration: const InputDecoration(
                 labelText: '목록을 입력 하세요',
               ),
               keyboardType: TextInputType.text,
             ),
             const SizedBox(
               height: 50,
             ),
             ElevatedButton
             (onPressed: (){
               if(textEditingController.text.trim().isNotEmpty){
                 addList();
               }
               Navigator.pop(context);
             }, 
             child: const Text('OK'),),
            ],
          ),
        ),
      ),
    );
  }
 


//--Function

addList(){
  if(switchValue){
Message.imagePath = 'images/cart.png';
  }
    if(switchValue2){
Message.imagePath = 'images/clock.png';
  }
      if(switchValue3){
Message.imagePath = 'images/pencil.png';
  }
  Message.workList = textEditingController.text;
  Message.actions = true;
}


}// end