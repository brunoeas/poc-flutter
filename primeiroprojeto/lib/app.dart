import 'package:flutter/material.dart';
import 'package:primeiroprojeto/bloc/app_bloc.dart';
import 'package:primeiroprojeto/configs/routes.dart';
import 'package:primeiroprojeto/screen/usuarios/usuarios.dart';
import 'package:primeiroprojeto/widget/bottom_bar/bottom_bar.dart';

///
/// Widget principal do App
///
/// [author: Bruno Eduardo]
///
class MinhaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBloc.provider(
      child: MaterialApp(
        routes: Routes.routes,
        color: Colors.white,
        title: "Github Finder",
        theme: ThemeData(primaryColor: Colors.black87),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Github Finder'),
          ),
          body: Usuarios(),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
