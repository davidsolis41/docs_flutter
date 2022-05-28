import 'package:flutter/material.dart';

class ButtomNavigationBarW extends StatelessWidget {
  const ButtomNavigationBarW({Key? key}) : super(key: key);

  final indexTab = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indexTab,
      elevation: 8.0,
      backgroundColor: Colors.blue[900],
      selectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(fontSize: 12, color: Colors.white),
      selectedIconTheme: const IconThemeData(color: Colors.white, size: 18),
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(fontSize: 12, color: Colors.grey),
      unselectedIconTheme: const IconThemeData(color: Colors.grey, size: 18),
      onTap: (int newIndex) {},
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.lock),
          label: 'Login',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Consulta',
        ),
      ],
    );
  }
}
