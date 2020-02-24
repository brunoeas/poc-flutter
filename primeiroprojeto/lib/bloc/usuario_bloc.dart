import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:primeiroprojeto/api/github_api.dart';
import 'package:primeiroprojeto/model/usuario.dart';
import 'package:rxdart/subjects.dart';
import 'package:http/http.dart' as http;

class UsuarioBloc extends BlocBase {
  /// Contexto em que o bloc foi chamado
  static BuildContext _context;

  final BehaviorSubject<List<Map>> _usuarioSubject =
      BehaviorSubject<List<Map>>();

  /// [Stream] com uma lista de usuarios
  Stream<List<Map>> get usuariosStream => _usuarioSubject.stream;

  /// Retorna uma instância de [ProdutorBloc]
  static UsuarioBloc of(BuildContext context) {
    _context = context;
    return BlocProvider.getBloc<UsuarioBloc>();
  }

  void getUsuarios() async {
    http.Response response = await GithubAPI().findAllUsuarios();

    List responseMap = jsonDecode(response.body);

    List<Usuario> usuariosFromApi =
        responseMap.map((user) => Usuario.fromAPI(user)).toList();

    _usuarioSubject.add(usuariosFromApi.map((user) => user.toMap).toList());
  }

  void clear() {
    _usuarioSubject.add(List<Map>());
  }

  @override
  void dispose() {
    super.dispose();
    _usuarioSubject.close();
  }
}
