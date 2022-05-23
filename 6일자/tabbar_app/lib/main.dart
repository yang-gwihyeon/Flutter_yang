import 'package:flutter/material.dart';
import 'package:tabbar_app/first_page.dart';
import 'package:tabbar_app/seond_page.dart';
import 'package:tabbar_app/third_page.dart';

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
    controller = TabController(length: 2, vsync: this);
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
          FirstPage(),SecondPage()]),
    
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
          // Tab(
          //   icon: Icon(
          //     Icons.looks_3,
          //     color: Colors.purple,
          //   ),
          //   text: "Three",
          // )
        ],
        ),
    ),
    
    );
  }
}
