import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'package:project/my_flutter_app_icons.dart';

import 'DatePicker.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  static List<Widget> _pages = <Widget>[
    Text(
      'Ihre Termine als Tutor',
      style: optionStyle,
  ),
    DatePicker(),
    /*Text(
      'Ihr Profil',
      style: optionStyle,
    ),*/
    Profile(),
  ];







  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(MyFlutterApp.htlsaalfelden),
        title: const Text('Tutor'),
        backgroundColor: Color(0xff134291),

      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Termine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Tutor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff134291),
        onTap: _onItemTapped,
      ),
    );
  }
}