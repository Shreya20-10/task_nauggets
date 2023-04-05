import 'package:flutter/material.dart';
import 'package:taks_nauggets/screens/my_profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    // int _currentIndex = 0;
    // final List<Widget> _children = [
    //   MyProfile(),
    // ];

    return BottomNavigationBar(
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.blueAccent,
      // onTap: onTabTapped,
      // currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
           // color: Colors.blue,
          ),
          label:'Profile',
        ),


        BottomNavigationBarItem(
          icon: new Icon(Icons.insert_chart_outlined_rounded,
          ),
          label: 'Record',
        ),

        BottomNavigationBarItem(
          icon: new Icon(Icons.monetization_on_outlined),
          label: 'Balance',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.security_outlined),
          label:'Security'
        ),


        BottomNavigationBarItem(
          icon: Icon(Icons.settings_rounded),
          label: 'Settings'
        ),

      ],
    );
  }

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  }
