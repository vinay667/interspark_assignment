import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interspark_assignment/view/profile_tab.dart';

import '../utils/colors.dart';
import 'home_tab.dart';

class EmployeeHomeScreen extends StatefulWidget {
  EmployeeHomeState createState() => EmployeeHomeState();
}

class EmployeeHomeState extends State<EmployeeHomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[HomeTab(), ProfileTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Employee List'),
        backgroundColor: MyColor.appTheme,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: MyColor.appTheme,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Employee List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}
