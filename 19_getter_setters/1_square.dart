//GUION BAJO ANTES DE LAS VARIABLES, LAS CONVIERTE EN PRIVADAS
//VARIABLE PRIVADA, SOLO VISIBLE DENTRO DEL SCRIPT
class Square {
  double _side;

  //se le quito  el 'this.' por la especificacion de varible 
  Square({required double side})
  //la convierte en privada al entrar a la clase
  //variable privada = varaible deparametro
  : _side = side;

  double areaCalculate() {
    return _side * _side;
  } 

  //**************getters
  //DECLARANDO PROPIEDAD INEXISTENTE
  //SIN ESTRUCTURA DE METODO. SIN PARENTESIS
  double get area{
    return _side*_side;
  }

  //EVALUA EL VALOR QUE PASAMOS COMO PARAMETRO AL IGUALARLO CON LA VARIABLE
  set side(double value){
    print('Setting new value');
    //'throw' rompe la ejecucion en caso de que la condicion sea 'true'
    if(value<0) throw 'El valor del lado debe ser mayo a cero...';
  }
}


void main(){
  //CREANDO INSTANCIA
  final mySqure = Square(side: 10);
  mySqure.side=-7;
  print('Area: ${mySqure.area}');
}