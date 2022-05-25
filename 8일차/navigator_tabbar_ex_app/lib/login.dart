import 'package:flutter/material.dart';

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

  late TextEditingController textEditingController;
    late TextEditingController textEditingController2;

    @override
  void initState() {
    // TODO: implement initState
        textEditingController = TextEditingController();
                textEditingController2 = TextEditingController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('animal Test'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.account_box_rounded,
            size:  100,
            color: Colors.blue,
            
          ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(labelText: '아이디를 입력하세요'),
                keyboardType: TextInputType.text,
              ),
                  ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: TextField(
                controller: textEditingController2,
                decoration: const InputDecoration(labelText: '패스워드를 입력하세요'),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
                         ),
                           ElevatedButton(
                onPressed: () {
                  _login();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: const Text('확인', style: TextStyle(fontSize: 15)),
              ),
              
    ]),
    );
  }

  //function

  _login() {
    if(textEditingController.text == 'root'&& textEditingController2.text == 'qwer1234'){
      _showDialog(context);
    }else{
     _showDialog2(context);
    }
  }

    _showDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false, // 유저는 반드시 (종료)버튼을 눌러야함!
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text('로그인 결과'),
            content: Text('로그인 성공!'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                     Navigator.pushNamed(context, '/1st');
                  
                  },
                  child: const Text('확인'))
            ],
          );
        },
        );
        }


            _showDialog2(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false, // 유저는 반드시 (종료)버튼을 눌러야함!
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text('로그인 결과'),
            content: Text('로그인 실패!'),
            actions: [
              TextButton(
                  onPressed: () {
                     Navigator.of(ctx).pop();
                  },
                  child: const Text('확인'))
            ],
          );
        },
        );

        showSnackBar1(BuildContext context) {


          if(textEditingController.text.trim().isEmpty){

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('아이디를 입력하세요'),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,
    )
  );
          }

          if(textEditingController2.text.trim().isEmpty){

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('패스워드를 입력하세요'),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,
    )
  );
          }
    


}

  }



}