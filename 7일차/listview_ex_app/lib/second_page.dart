import 'package:flutter/material.dart';
import 'package:listview_ex_app/country_item.dart';


class second_page extends StatefulWidget {
  final List<Country> list;
  const second_page({Key? key, required this.list}) : super(key: key);

  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  final nameController = TextEditingController();
  final nameController2 = TextEditingController();
  int _radioValue = 0;
  bool flyExist = false;
  var _imagePath;
  String imageName = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              maxLines: 1,
            ),
              TextField(
              controller: nameController2,
              keyboardType: TextInputType.text,
              maxLines: 1,
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               Text('날 수 있나요?'),
               Checkbox(
                 value: flyExist, 
                 onChanged: (check){
                   setState(() {
                     flyExist = check!;
                   });
                 })
              ],
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      _imagePath = 'images/korea.png';
                      setState(() {
                        imageName = "젖소";
                      });
                    },
                    child: Image.asset(
                      'images/korea.png',
                      width: 80,
                    ),

                  ),
                               GestureDetector(
                    onTap: () {
                      _imagePath = 'images/korea.png';
                      setState(() {
                        imageName = "젖소";
                      });
                    },
                    child: Image.asset(
                      'images/korea.png',
                      width: 80,
                    ),

                  ),
                               GestureDetector(
                    onTap: () {
                      _imagePath = 'images/korea.png';
                      setState(() {
                        imageName = "젖소";
                      });
                    },
                    child: Image.asset(
                      'images/korea.png',
                      width: 80,
                    ),

                  ),
                               GestureDetector(
                    onTap: () {
                      _imagePath = 'images/korea.png';
                      setState(() {
                        imageName = "젖소";
                      });
                    },
                    child: Image.asset(
                      'images/korea.png',
                      width: 80,
                    ),
                    
                  ),
                               GestureDetector(
                    onTap: () {
                      _imagePath = 'images/korea.png';
                      setState(() {
                        imageName = "젖소";
                      });
                    },
                    child: Image.asset(
                      'images/korea.png',
                      width: 80,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(imageName
              ),
            ),
            ElevatedButton(
              onPressed: (){
                var country = Country(
                  countryName: nameController.text, 
                  imagePath: _imagePath, 
                  shortCountryName: nameController2.text, 
                  );

                  AlertDialog dialog = AlertDialog(
                    title: Text('국가 추가하기'),
                    content: Text(
                      '이 동물은 ${country.countryName} 입니다.'
                      '이 동물을 ${country.shortCountryName} 추가 하시겠습니까?',
                      style: TextStyle(fontSize: 17),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          widget.list.add(country);
                          Navigator.of(context).pop();
                        }, 
                        child: const Text('예'),),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            '아니오',
                            style: const TextStyle(color: Colors.red),
                          ),
                        )
                    ],
                  );
                  showDialog(
                    context: context, 
                    builder: (BuildContext context){
                      return dialog;
                    });
              }, 
              child: const Text('동물 추가하기'))
          ],
        ),
      ),
    );
  }

// --- Functions





}//end