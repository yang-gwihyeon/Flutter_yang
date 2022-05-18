import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => _showDialog(context),
          child: const Text('Hello World'),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false, // 유저는 반드시 (종료)버튼을 눌러야함!
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text('Alert Title'),
            content: const Text('Hello World를\n Touch했습니다.'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    Navigator.pushNamed(context, '/2nd');
                  },
                  child: const Text('2번째페이지로'))
            ],
          );
        },
        );
  }
}
