import 'figura.dart';

class Retangulo extends Figura{
  double _largura;
  double _comprimento;

  Retangulo(int x, int y, double this._largura, double this._comprimento) : super(x, y);

  void isQuadrado() => print(_largura == _comprimento ? "Eh um quadrado!" : "Nao eh um quadrado!");

  @override
  double area() => _largura*_comprimento;
}