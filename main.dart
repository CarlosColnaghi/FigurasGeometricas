import 'model/circulo.dart';
import 'model/figura.dart';
import 'model/retangulo.dart';
import 'model/triangulo.dart';


void main(){
  List<Figura> figuras = [
    Circulo(3, 4, 5),
    Retangulo(1, 2, 5, 5),
    Retangulo(9, 5, 2, 5),
    Triangulo(5, 6, 2, 5, 4)
  ];

  for(final figura in figuras){
    print(figura);
    print("Area: ${figura.area()}");
    if(figura is Circulo){
      figura.diametro();
    }else if(figura is Retangulo){
      figura.isQuadrado();
    }else if(figura is Triangulo){
      figura.getTipo();
    }
    print("");
  }

  double areaTotal = figuras.fold(0.0, (areaTotal, figura) => areaTotal + figura.area());  
  print("Area total dos objetos: ${areaTotal}");
}