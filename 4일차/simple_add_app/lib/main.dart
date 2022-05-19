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
  late TextEditingController textEditingController;
  late TextEditingController textEditingController2;

  late TextEditingController retextEditingController1;
  late TextEditingController retextEditingController2;
  late TextEditingController retextEditingController3;
  late TextEditingController retextEditingController4;

  late String result1;
  late String result2;
  late String result3;
  late String result4;

  late bool switchValue1;
  late bool switchValue2;
  late bool switchValue3;
  late bool switchValue4;

  @override
  void initState() {
    textEditingController = TextEditingController();
    textEditingController2 = TextEditingController();

    retextEditingController1 = TextEditingController();
    retextEditingController2 = TextEditingController();
    retextEditingController3 = TextEditingController();
    retextEditingController4 = TextEditingController();

    result1 = '';
    result2 = '';
    result3 = '';
    result4 = '';

    switchValue1 = true;
    switchValue2 = true;
    switchValue3 = true;
    switchValue4 = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('간단한 계산기 '),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(labelText: '첫번째 숫자를 입력하세요'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: textEditingController2,
                  decoration: const InputDecoration(labelText: '두번째 숫자를 입력하세요'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          // 사용자의 입력 내용 확인
                          if (textEditingController.text.trim().isEmpty) {
                            errorSnackBar(context);
                          } else {
                            showSnackBar(context);
                          }
                        },
                        child: const Text('계산하기')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // 사용자의 입력 내용 확인
                          setState(() {
                            textEditingController.text = '';
                            textEditingController2.text = '';
                            retextEditingController1.text = '';
                            retextEditingController2.text = '';
                            retextEditingController3.text = '';
                            retextEditingController4.text = '';
                          });
                        },
                        child: const Text('지우기'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('덧셈:'),
                    Switch(
                      value: switchValue1, // 보여지는 값
                      onChanged: (value) {
                        // 변경하는 값
                        setState(() {
                          switchValue1 = value;
                           if (textEditingController.text.trim().isEmpty) {
                            errorSnackBar(context);
                          } else {
                            showSnackBar(context);
                          }
                        });
                      },
                    ),
                    Text('뺄셈:'),
                    Switch(
                      value: switchValue2, // 보여지는 값
                      onChanged: (value) {
                        // 변경하는 값
                        setState(() {
                          switchValue2 = value;
                        if (textEditingController.text.trim().isEmpty) {
                            errorSnackBar(context);
                          } else {
                            showSnackBar(context);
                          }
                        });
                      },
                    ),
                    Text('곱셈:'),
                    Switch(
                      value: switchValue3, // 보여지는 값
                      onChanged: (value) {
                        // 변경하는 값
                        setState(() {
                          switchValue3 = value;
                           if (textEditingController.text.trim().isEmpty) {
                            errorSnackBar(context);
                          } else {
                            showSnackBar(context);
                          }
                        });
                      },
                    ),
                    Text('나눗셈:'),
                    Switch(
                      value: switchValue4, // 보여지는 값
                      onChanged: (value) {
                        // 변경하는 값
                        setState(() {
                          switchValue4 = value;
                           if (textEditingController.text.trim().isEmpty) {
                            errorSnackBar(context);
                          } else {
                            showSnackBar(context);
                          }
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: retextEditingController1,
                  decoration: const InputDecoration(labelText: '덧셈 결과'),
                  keyboardType: TextInputType.number,
                  readOnly: true,
                ),
                TextField(
                  controller: retextEditingController2,
                  decoration: const InputDecoration(labelText: '뺏셈 결과'),
                  keyboardType: TextInputType.number,
                  readOnly: true,
                ),
                TextField(
                  controller: retextEditingController3,
                  decoration: const InputDecoration(labelText: '곱셈 결과'),
                  keyboardType: TextInputType.number,
                  readOnly: true,
                ),
                TextField(
                  controller: retextEditingController4,
                  decoration: const InputDecoration(labelText: '나눗셈 결과'),
                  keyboardType: TextInputType.number,
                  readOnly: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // -- function
  errorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('숫자를 입력하세요!'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }

  showSnackBar(BuildContext context) {
    int firstNum = int.parse(textEditingController.text);
    int SecondNum = int.parse(textEditingController2.text);

    setState(() {
      result1 = "${firstNum + SecondNum}";
      result2 = "${firstNum - SecondNum}";
      result3 = "${firstNum * SecondNum}";
      result4 = "${firstNum / SecondNum}";


        if(switchValue1==true){
retextEditingController1.text = result1;
        }else{
          retextEditingController1.text = '';
        }
      if(switchValue2==true){
retextEditingController2.text = result2;
      }else{
        retextEditingController2.text = '';
      }
      
            if(switchValue3==true){
retextEditingController3.text = result3;
      }else{
        retextEditingController3.text = '';
      }
            if(switchValue4==true){
retextEditingController4.text = result4;
      }else{
        retextEditingController4.text = '';
      }
    });

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('계산완료'),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,
    ));
  }
}
