abstract class Figura{
  int _x;
  int _y;

  Figura(this._x, this._y);

  int get getX => _x;
  int get getY => _y;

  double area();

  @override
  String toString() => "Criado ${this.runtimeType} em X=${this._x} Y=${this._y}";
}