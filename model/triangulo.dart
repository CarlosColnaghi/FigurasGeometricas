import 'dart:math';

import 'figura.dart';

class Triangulo extends Figura{
  double _face1;
  double _face2;
  double _face3;

  Triangulo(int x, int y, double this._face1, double this._face2, double this._face3) : super(x, y);

  void getTipo(){
    if(!((_face1+_face2) > _face3 && (_face1+_face3) > _face2 && (_face2+_face3) > _face1)){
      print("Nao eh um triangulo");
    }else if((_face1 == _face2) && (_face1 == _face3) && (_face2 == _face3)){
      print("Triangulo Equilatero");
    }else if((_face1 == _face2) || (_face1 == _face3) || (_face2 == _face3)){
      print("Triangulo Isosceles");
    }else{
      print("Triangulo Escaleno");
    }
  }

  @override
  double area(){
    if(!((_face1+_face2) > _face3 && (_face1+_face3) > _face2 && (_face2+_face3) > _face1)){
      return 0.0;
    }
    double p = (_face1+_face2+_face3)/2;
    return sqrt(p*(p-_face1)*(p-_face2)*(p-_face3));
  }

}