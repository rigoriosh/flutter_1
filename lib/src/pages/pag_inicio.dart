import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/misWidgets/menu.dart';

import 'package:preferencias_usuario/src/preferencias/usuario.dart';

class PaginaInicio extends StatelessWidget {

  static final String routeName = 'home';
  final preferenciasUsaurio = new PreferenciasUsaurio();

  @override
  Widget build(BuildContext context) {
    
    preferenciasUsaurio.inicializarPrefetencias();
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario: '),
          Divider(),
          Text('Genero: ${preferenciasUsaurio.genero}'),
          Divider(),
          Text('Nombre Usuario:'),
          Divider(),
        ],
      ),
    );
  }
}
