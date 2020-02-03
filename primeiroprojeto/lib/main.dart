import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() {
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget {

  final RandomColor _randomColor = RandomColor();
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final Color color = _randomColor.randomColor();

    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
//          onTap: (int index) {
//            setState(() {
//              _index = index
//            });
//          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms),
              title: Text('Icon sla mano'),
              activeIcon: Icon(Icons.access_alarms, color: color)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              title: Text('Acessibilidade'),
              activeIcon: Icon(Icons.accessibility, color: color)
            )
          ],
        ),
        appBar: AppBar(
          title: Text('titulooo'),
          backgroundColor: color,
          actions: <Widget>[
            Icon(Icons.add)
          ],
        ),
        body: Text(
            'hello',
            style: TextStyle(fontSize: 24)
        ),
      )
    );
  }

}
