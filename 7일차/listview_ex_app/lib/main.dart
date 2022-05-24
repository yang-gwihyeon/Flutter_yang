import 'package:flutter/material.dart';
import 'package:listview_ex_app/country_item.dart';
import 'package:listview_ex_app/first_page.dart';
import 'package:listview_ex_app/second_page.dart';

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
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  // Property
  late TabController controller;
  List<Country> countryList = [];

  @override
  void initState() {

    super.initState();
    controller = TabController(length: 2, vsync: this);

    countryList.add(Country(
        shortCountryName: 'a_',
        countryName: 'austria',
        imagePath: 'images/austria.png',
      ));
          countryList.add(Country(
        shortCountryName: 'b_',
        countryName: 'belgium',
        imagePath: 'images/belgium.png',
      ));
          countryList.add(Country(
        shortCountryName: 'e_',
        countryName: 'estonia',
        imagePath: 'images/estonia.png',
      ));
          countryList.add(Country(
        shortCountryName: 'f_',
        countryName: 'france',
        imagePath: 'images/france.png',
      ));
          countryList.add(Country(
        shortCountryName: 'g_',
        countryName: 'germany',
        imagePath: 'images/germany.png',
      ));
          countryList.add(Country(
        shortCountryName: 'h_',
        countryName: 'hungary',
        imagePath: 'images/hungary.png',
      ));
               countryList.add(Country(
        shortCountryName: 'i_',
        countryName: 'italy',
        imagePath: 'images/italy.png',
      ));
               countryList.add(Country(
        shortCountryName: 'l_',
        countryName: 'latvia',
        imagePath: 'images/latvia.png',
      ));
               countryList.add(Country(
        shortCountryName: 'l_',
        countryName: 'lithuania',
        imagePath: 'images/lithuania.png',
      ));
                  countryList.add(Country(
        shortCountryName: 'l_',
        countryName: 'luxemburg',
        imagePath: 'images/luxemburg.png',
      ));
                  countryList.add(Country(
        shortCountryName: 'n_',
        countryName: 'netherland',
        imagePath: 'images/netherland.png',
      ));
                  countryList.add(Country(
        shortCountryName: 'r_',
        countryName: 'romania',
        imagePath: 'images/romania.png',
      ));}
  

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('country Test'),
      ),
      body: TabBarView(
        controller: controller, 
        children: [
        first_page(list: countryList),
         second_page(),
      
      ]),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        child: TabBar(
          controller: controller,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.looks_two,
                color: Colors.red,
              ),
            ),
             Tab(
              icon: Icon(
                Icons.looks_two,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}