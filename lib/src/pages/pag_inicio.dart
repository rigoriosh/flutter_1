import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/misWidgets/menu.dart';

import 'package:preferencias_usuario/src/preferencias/usuario.dart';

class PaginaInicio extends StatelessWidget {

  static final String routeName = 'home';
  final preferenciasUsaurio = new PreferenciasUsaurio();

  @override
  Widget build(BuildContext context) {
    
    //preferenciasUsaurio.inicializarPrefetencias();
    preferenciasUsaurio.lastPage = PaginaInicio.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor: this.preferenciasUsaurio.colorSecundario ? Colors.teal : Colors.blue[400],
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario: ${this.preferenciasUsaurio.colorSecundario}'),
          Divider(),
          Text('Genero: ${preferenciasUsaurio.genero}'),
          Divider(),
          Text('Nombre Usuario: ${this.preferenciasUsaurio.nombreUsuario}'),
          Divider(),
        ],
      ),
    );
  }
}
