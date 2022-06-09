import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'package:project/my_flutter_app_icons.dart';

import 'DatePicker.dart';

final List<String> names = <String>[];

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final List<Widget> _pages = <Widget>[
      ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 70,
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Color(0xff134291),
              ),
              child: Center(
                  child: Text('${names[index]}',
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  )
              ),
            );
          }
      ),
      DatePicker(),
      /*Text(
      'Ihr Profil',
      style: optionStyle,
    ),*/
      Profile(),
    ];

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