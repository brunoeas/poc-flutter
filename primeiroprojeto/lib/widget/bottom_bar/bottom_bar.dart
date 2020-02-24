import 'package:flutter/material.dart';

///
/// Widget da barra de navegação inferior
///
/// [author: Bruno Eduardo]
///
class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black87,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.people, color: Colors.white),
          activeIcon: Icon(Icons.people, color: Colors.white30),
          title: Text('Usuários', style: TextStyle(color: Colors.white)),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_add, color: Colors.white),
          activeIcon: Icon(Icons.person_add, color: Colors.white30),
          title: Text('Salvos', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
