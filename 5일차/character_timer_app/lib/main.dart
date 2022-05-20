import 'dart:async';

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
  String displayCharacter = 'Hello';
  late String chracter;

  late List str = [];
  late int a = 1;
  late TextEditingController textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    str = displayCharacter.split('');
    chracter = str[0];
    textEditingController = TextEditingController();

    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      changeImage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LED 광고'),
      ),
      body: Center(
        child: Text(chracter,
        style: TextStyle(
                  color: Colors.orange,
                  fontSize: 100,
                  letterSpacing: 2,
                ),),
      ),
            drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('광고 문구를 입력하세요',
                     style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  letterSpacing: 2,
                ),
                  
                  
                  ),
                ],
              ),
              width: 320,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
            ),
            // UserAccountsDrawerHeader(
            //   accountName: Text('                광고 문구를 입력하세요'),
            //   accountEmail: Text('               ex) 대한민국'),
            //   decoration: BoxDecoration(
            //     color: Colors.red,
            //     borderRadius: BorderRadius.only(
            //       bottomLeft:  Radius.circular(40),
            //       bottomRight: Radius.circular(40),
            //     ),
            //   ),
            // ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(labelText: ' 글자를 입력하세요'),
                  keyboardType: TextInputType.text,
             ),
           ),
           
                     ListTile(
              onTap: (){
                 if(textEditingController.text.trim().isEmpty){
                    errorSnackBar(context);
                  }else{
                    showSnackBar(context);
                    Navigator.pop(context);
                  }

              },
              leading: Icon(
                
                Icons.ads_click,
                color: Colors.red,
                size: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }

  changeImage() {
    setState(() {

      if (a >= str.length) {
        chracter = str[0];
        a = 1;
      } else {
        chracter += str[a];
        a += 1;
      }
    });
  }
// -- function
errorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('글자를 입력하세요!'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
}

showSnackBar(BuildContext context) {
  setState(() {
    chracter = '';
    displayCharacter = textEditingController.text;
    textEditingController.text = '';
    str = displayCharacter.split('');
    chracter = str[0];
    a=1;
  });
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('입력하신 글자는 $displayCharacter 입니다.'),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.blue,
    ),
    
  );

}
}//end
