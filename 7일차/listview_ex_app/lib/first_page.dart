

import 'package:flutter/material.dart';
import 'package:listview_ex_app/country_item.dart';


class first_page extends StatefulWidget {
  final List<Country> list;

  const first_page({Key? key, required this.list}) : super(key: key);

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: widget.list.length,
          itemBuilder: (context, position){
            return GestureDetector(
              onTap: (){
                _showDialog(context, position);
              },
              child: Card(
                child: Row(
                  children: [
                    Image.asset(
                      widget.list[position].imagePath,
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain
                    ),
                    Text("      ${widget.list[position].shortCountryName}"),
                  ],
                ),
              ),
            );
          }),
      ),
      
    ); 
  }

  // function
    _showDialog(BuildContext context, position) {
    showDialog(
        context: context,
        barrierDismissible: false, // 유저는 반드시 (종료)버튼을 눌러야함!
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text('${widget.list[position].shortCountryName}'),
            content: Text('${widget.list[position].countryName} 입니다.'),
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
  }
}