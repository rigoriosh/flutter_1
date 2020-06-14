








































import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/pag_ajustes.dart';
import 'package:preferencias_usuario/src/pages/pag_inicio.dart';
import 'package:preferencias_usuario/src/preferencias/usuario.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferenciasUsaurio = new PreferenciasUsaurio();
  await preferenciasUsaurio.inicializarPrefetencias();
    
  runApp(MyApp());
} 
 
class MyApp extends StatelessWidget {

  final prefer = new PreferenciasUsaurio();

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