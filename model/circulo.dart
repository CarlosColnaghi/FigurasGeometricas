import 'dart:math';

import 'figura.dart';

class Circulo extends Figura{
  double _raio;

  Circulo(int x, int y, double this._raio) : super(x, y);

  void diametro() => print("Diametro: ${2*_raio}");

  @override
  double area() => pi*pow(_raio, 2);
}