















import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/pag_ajustes.dart';
import 'package:preferencias_usuario/src/pages/pag_inicio.dart';

class MenuWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image:
                    DecorationImage(
                      image: AssetImage('assets/original.jpg'),
                      fit: BoxFit.cover
                    )),
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue,),
            title: Text('Inicio'),
            onTap: (){
              Navigator.pushReplacementNamed(context, PaginaInicio.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.party_mode, color: Colors.blue,),
            title: Text('Paginas2'),
            onTap: (){
              print("rigooo2");
            },
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.blue,),
            title: Text('Paginas3'),
            onTap: (){
              print("rigooo3");
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue,),
            title: Text('Settings'),
            onTap: (){
              //Navigator.pop(context);//cierra el menu
              //Navigator.pushNamed(context, PaginaAjustes.routeName);              
              Navigator.pushReplacementNamed(context, PaginaAjustes.routeName);
            },
          ),
        ],
      ),
    );
  }
}