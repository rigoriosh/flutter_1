


























import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsaurio {

  static final PreferenciasUsaurio _instancia = new PreferenciasUsaurio._internal();

  factory PreferenciasUsaurio() {
    return _instancia;
  }

  PreferenciasUsaurio._internal();

  SharedPreferences _preferencias;

  inicializarPrefetencias() async {    
    this._preferencias = await SharedPreferences.getInstance();    
  }

  //GET y SET Genero
  get genero{
    print("333333");
    return this._preferencias.getInt('genero') ?? 1; //si _preferencias.getInt('genero') retorna null, entonces devuelve 1.
  }

  set genero(int v){
    this._preferencias.setInt('genero', v); //si _preferencias.getInt('genero') retorna null, entonces devuelve 1.
  }
}
