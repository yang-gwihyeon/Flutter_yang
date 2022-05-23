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
        primarySwatch: Colors.red,
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

  late String _lampImage;
  late double _lampWidth;
  late double _lampHeight;

  late bool _switch;
  late bool _zoom;
  late bool _red;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _lampImage = 'images/lamp_on.png';
    _lampWidth = 300;
    _lampHeight = 600;

    _switch = true;
    _zoom = false;
    _red = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert를 이용한 메세지 출력'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 650,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _lampImage,
                    width: _lampWidth,
                    height: _lampHeight,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _onDialog(context);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: const Text('켜기'),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    _offDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: const Text('꺼기'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // -- Functions
  decisionOnOff() {
    if (_switch) {
      if (_red) {
        _lampImage = 'images/lamp_red.png';
      } else {
        _lampImage = 'images/lamp_on.png';
      }
    } else {
      _lampImage = 'images/lamp_off.png';
    }
  }

  decisionLampSize() {
    if (_zoom == true) {
      _lampWidth = 300;
      _lampHeight = 600;
    } else {
      _lampWidth = 150;
      _lampHeight = 300;
    }
  }

  _onDialog(BuildContext context) {
    if (_switch) {
      showDialog(
          context: context,
          barrierDismissible: false, // 유저는 반드시 (종료)버튼을 눌러야함!
          builder: (BuildContext ctx) {
            return AlertDialog(
              title: const Text('경고'),
              content: const Text('현재 램프가 켜진 상태입니다.'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: const Text('네 알겠습니다.')),
              ],
            );
          });
    } else {
      showDialog(
          context: context,
          barrierDismissible: false, // 유저는 반드시 (종료)버튼을 눌러야함!
          builder: (BuildContext ctx) {
            return AlertDialog(
              title: const Text('램프 켜기'),
              content: const Text('램프를 키겠습니까?'),
              actions: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        _lampImage = 'images/lamp_on.png';
                        _switch = true;
                      });

                      Navigator.of(ctx).pop();
                    },
                    child: const Text('네')),
                TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: const Text('아니요'))
              ],
            );
          });
    }
  }

  _offDialog(BuildContext context) {
    if (_switch == false) {
      showDialog(
          context: context,
          barrierDismissible: false, // 유저는 반드시 (종료)버튼을 눌러야함!
          builder: (BuildContext ctx) {
            return AlertDialog(
              title: const Text('경고'),
              content: const Text('현재 램프가 꺼진 상태입니다.'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: const Text('네 알겠습니다.')),
              ],
            );
          });
    } else {
      showDialog(
          context: context,
          barrierDismissible: false, // 유저는 반드시 (종료)버튼을 눌러야함!
          builder: (BuildContext ctx) {
            return AlertDialog(
              title: const Text('램프 끄기'),
              content: const Text('램프를 끄시겠습니까?'),
              actions: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        _lampImage = 'images/lamp_off.png';
                        _switch = false;
                      });

                      Navigator.of(ctx).pop();
                    },
                    child: const Text('네')),
                TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: const Text('아니요'))
              ],
            );
          });
    }
  }
}//end
