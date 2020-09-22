import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {
  String _heroe = "Capitán América";
  Color colorBase = Colors.blue;

  get heroe {
    return this._heroe;
  }

  set heroe(String nombre) {
    this._heroe = nombre;
    this.colorBase = (nombre == "IronMan") ? Colors.red : Colors.blue;
    notifyListeners();
  }
}
