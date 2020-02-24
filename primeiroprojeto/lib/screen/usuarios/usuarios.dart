import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:primeiroprojeto/api/github_api.dart';
import 'package:primeiroprojeto/bloc/usuario_bloc.dart';
import 'package:primeiroprojeto/model/usuario.dart';
import 'package:primeiroprojeto/widget/card_info_usuario/card_info_usuario.dart';
import 'package:http/http.dart' as http;

class Usuarios extends StatefulWidget {
  @override
  _UsuariosState createState() => _UsuariosState();
}

class _UsuariosState extends State<Usuarios> {
  List<Usuario> usuarios = <Usuario>[];

  @override
  void initState() {
    super.initState();
    UsuarioBloc.of(context).getUsuarios();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<List<Map>>(
        stream: UsuarioBloc.of(context).usuariosStream,
        builder: (BuildContext context, AsyncSnapshot<List<Map>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              ),
            );
          } else if (snapshot.data.isEmpty) {
            return Center(
              child: Text(
                'Nenhum usuário encontrado',
                style: Theme.of(context).textTheme.subhead,
              ),
            );
          }

          List<Map> listMap = snapshot.data;

          return GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: listMap
                .map((mapItem) => Usuario.fromMap(mapItem))
                .map((user) => CardInfoUsuario(user.login, user.avatarUrl))
                .toList(),
          );
        },
      ),
    );
  }
}
