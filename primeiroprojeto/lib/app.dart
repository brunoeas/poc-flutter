import 'package:flutter/material.dart';
import 'package:primeiroprojeto/widget/bottom-bar.dart';

///
/// Widget principal do App
///
/// [author: Bruno Eduardo]
///
class MinhaApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        title: "Github Finder",
        theme: ThemeData(
          primaryColor: Colors.black87
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Github Finder'),
          ),
          body: Text('hello', style: TextStyle(fontSize: 24)),
          bottomNavigationBar: BottomBar()
        )
    );
  }

}