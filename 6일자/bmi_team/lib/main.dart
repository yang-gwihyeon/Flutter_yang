import 'package:bmi_team/pageFive.dart';
import 'package:bmi_team/pageFour.dart';
import 'package:bmi_team/pageOne.dart';
import 'package:bmi_team/pageSix.dart';
import 'package:bmi_team/pageThree.dart';
import 'package:bmi_team/pagetwo.dart';
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
//Property

  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 6, vsync: this);
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('dd'),
      // ),
      body: TabBarView(
        controller: controller,
        children: const [
          pageOne(),pageTwo(),pageThree(),pageFour(),pageFive(),pageSix()]),
    
    bottomNavigationBar: Container(
      color: Colors.yellow,
      height: 100,
      child: TabBar(
        controller: controller,
        labelColor: Colors.blue,
        indicatorColor: Colors.red,
        tabs: [
          Tab(
            icon: Icon(
              Icons.looks_one,
              color: Colors.blue,
            ),
            text: "One",
          ),
          Tab(
            icon: Icon(
              Icons.looks_two,
              color: Colors.red,
            ),
            text: "Two",
          ),
          Tab(
            icon: Icon(
              Icons.looks_3,
              color: Colors.orange,
            ),
            text: "Three",
          ),
          Tab(
            icon: Icon(
              Icons.looks_4,
              color: Colors.purple,
            ),
            text: "Four",
          ),
          Tab(
            icon: Icon(
              Icons.looks_5,
              color: Colors.green,
            ),
            text: "Five",
          ),
          Tab(
            icon: Icon(
              Icons.looks_6,
              color: Colors.black,
            ),
            text: "Six",
          )
        ],
        ),
    ),
    
    );
  }
}
