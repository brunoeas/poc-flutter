import 'package:flutter/material.dart';
import 'package:primeiroprojeto/screen/usuarios/usuarios.dart';

class Routes {
  static final _routes = {
    '/usuarios': (BuildContext context) => Usuarios(),
    '/info-usuario': (BuildContext context) => null,
    '/usuarios/favoritos': (BuildContext context) => null,
  };

  static get routes => _routes;

  static Route onGenerateRoute(RouteSettings settings) {
    return null;
  }
}

class MaterialCustomRoute<T> extends MaterialPageRoute<T> {
  MaterialCustomRoute({
    WidgetBuilder builder,
    RouteSettings settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(opacity: animation, child: child);
  }
}
