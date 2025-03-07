import 'package:flutter/material.dart';
import 'package:tank_manager/model/app_data.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    var appData = AppData.instance;
    int currentIndex = appData.currentIndex;
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabTapped,
      backgroundColor: Colors.grey.shade800,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          label: 'Keypad',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note_outlined),
          label: 'Information',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_rounded),
          label: 'Graphs',
        ),
      ],
    );
  }

  void onTabTapped(int index) {
    var appData = AppData.instance;
    appData.currentIndex = index;
  }
}
