import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:primeiroprojeto/bloc/usuario_bloc.dart';

class AppBloc {
  static Widget provider({Widget child}) {
    return BlocProvider(
      blocs: [
        Bloc((i) => UsuarioBloc()),
      ],
      child: child,
    );
  }
}
