








































import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/pag_ajustes.dart';
import 'package:preferencias_usuario/src/pages/pag_inicio.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias usuario',
      initialRoute: PaginaInicio.routeName,
      routes: {
        PaginaInicio.routeName: (BuildContext context)  => PaginaInicio(),
        PaginaAjustes.routeName: (BuildContext context) => PaginaAjustes(),
      },
    );
  }
}