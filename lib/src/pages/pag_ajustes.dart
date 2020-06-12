import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/misWidgets/menu.dart';

class PaginaAjustes extends StatefulWidget {
  static final String routeName = 'ajustes';

  @override
  _PaginaAjustesState createState() => _PaginaAjustesState();
}

class _PaginaAjustesState extends State<PaginaAjustes> {
  bool _colorSecundario = false;
  int _genero = 1;
  String _nombre = 'Pedro';
  TextEditingController _textControler;
  
  @override ///metodo que se ejecuta apenas se inicializa este estado osea cuando ingresa a esta pagina
  void initState() { 
    super.initState();
    _textControler = new TextEditingController(text: _nombre);  
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          SwitchListTile(
              value: _colorSecundario,
              title: Text('Color secundario'),
              onChanged: (boleano) {
                setState(() {
                  _colorSecundario = boleano;
                });
              }),
          RadioListTile(
              value: 1,
              title: Text('Masculino'),
              groupValue: _genero,
              onChanged: _setSelectedRsdio,
              ),
          RadioListTile(
              value: 2,
              title: Text('Femenino'),
              groupValue: _genero,
              onChanged: _setSelectedRsdio),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textControler,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona usando el telefono '
              ),
              onChanged: (string){

              },
            ),
          ),

        ],
      ),
    );
  }

  void _setSelectedRsdio(int value) {
    _genero = value;
    setState(() {
      
    });
  }
}
