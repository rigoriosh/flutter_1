










import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/misWidgets/menu.dart';

class PaginaInicio extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario:'),
          Divider(),
          Text('Genero:'),
          Divider(),
          Text('Nombre Usuario:'),
          Divider(),
        ],
      ),
    );
  }

}
