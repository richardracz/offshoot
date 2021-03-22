import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:offshoot/chat.dart';
import 'package:offshoot/profile.dart';
import 'package:offshoot/browse.dart';
import 'home.dart';

class NavigationController extends StatefulWidget {

  const NavigationController({Key key}) : super(key: key);

  @override
  _NavigationControllerState createState() => _NavigationControllerState();
}


class _NavigationControllerState extends State<NavigationController> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: <Widget>[
          Home(),
          Browse(),
          Profile(),
          Chat(),


        ].elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.transparent,
        activeColor: Color.fromRGBO(255, 0, 0, 1),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.collections),
            activeIcon: Icon(CupertinoIcons.collections_solid),
            title: Text('Feed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search_circle),
            activeIcon: Icon(CupertinoIcons.search_circle_fill),
            title: Text('Browse'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            activeIcon: Icon(CupertinoIcons.profile_circled),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_text),
            activeIcon: Icon(CupertinoIcons.chat_bubble_text_fill),
            title: Text('Chat'),
          ),
        ],
        currentIndex: _selectedIndex,
//        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

