


























import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsaurio {

  static final PreferenciasUsaurio _instancia = new PreferenciasUsaurio._internal();//patron singleton

  factory PreferenciasUsaurio() {
    return _instancia;
  }

  PreferenciasUsaurio._internal();//contructor del singleton

  SharedPreferences _preferencias;

  inicializarPrefetencias() async {    
    this._preferencias = await SharedPreferences.getInstance();    
  }

  //GET y SET Genero
  int get genero{    
    return this._preferencias.getInt('genero') ?? 1; //si _preferencias.getInt('genero') retorna null, entonces devuelve 1.
  }

  set genero(int v){
    this._preferencias.setInt('genero', v); //si _preferencias.getInt('genero') retorna null, entonces devuelve 1.
  }
  //GET y SET colorSecundario
  bool get colorSecundario{    
    return this._preferencias.getBool('colorSecundario') ?? false; //si _preferencias.getInt('colorSecundario') retorna null, entonces devuelve 1.
  }

  set colorSecundario(bool v){
    this._preferencias.setBool('colorSecundario', v); //si _preferencias.getInt('genero') retorna null, entonces devuelve 1.
  }

  //GET y SET nombreUsuario
  String get nombreUsuario{
    return this._preferencias.getString('nombreUsuario') ?? ''; //si _preferencias.getInt('nombreUsuario') retorna null, entonces devuelve 1.
  }

  set nombreUsuario(String v){
    this._preferencias.setString('nombreUsuario', v); //si _preferencias.getInt('genero') retorna null, entonces devuelve 1.
  }

  //GET y SET lastPage
  String get lastPage{
    return this._preferencias.getString('lastPage') ?? 'home'; //si _preferencias.getInt('lastPage') retorna null, entonces devuelve 1.
  }

  set lastPage(String v){
    this._preferencias.setString('lastPage', v); //si _preferencias.getInt('genero') retorna null, entonces devuelve 1.
  }
}
