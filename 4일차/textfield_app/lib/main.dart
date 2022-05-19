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
  late TextEditingController textEditingController;

@override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // 키보드 내리기
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Single Textfield'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(labelText: '글자를 입력하세요'),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  // 사용자의 입력 내용 확인
                  if(textEditingController.text.trim().isEmpty){
                    errorSnackBar(context);
                  }else{
                    showSnackBar(context);
                  }
                }, 
                child: const Text('출력'))
            ],
          ),
        ),  
      ),
    );
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
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('입력하신 글자는 ${textEditingController.text} 입니다.'),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.blue,
    )
  );
}


}// End