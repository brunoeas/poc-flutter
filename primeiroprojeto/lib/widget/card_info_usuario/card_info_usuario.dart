import 'package:flutter/material.dart';

class CardInfoUsuario extends StatelessWidget {
  CardInfoUsuario(
    this.nmUsuario,
    this.urlFotoUsuario,
  );

  final String nmUsuario;
  final String urlFotoUsuario;

  @override
  Widget build(BuildContext context) {
    if (nmUsuario == 'brunoeas') {
      print(urlFotoUsuario);
    }
    return Card(
      elevation: 7,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: urlFotoUsuario != null
                ? Image(
                    image: NetworkImage(urlFotoUsuario),
                  )
                : Icon(
                    Icons.person,
                    size: 100,
                  ),
          ),
          Expanded(
            flex: 1,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: 20),
              child: Center(
                child: Container(
                  padding: new EdgeInsets.only(
                    right: 15,
                    left: 13,
                  ),
                  child: Text(
                    nmUsuario != null ? nmUsuario : 'Unknown',
                    style: TextStyle(fontSize: 16),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
