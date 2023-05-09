//MODELO
class Persona {
  String nombre;
  int edad;
  bool estadoVida;

  Persona({
    required this.nombre,
    required this.edad,
    required this.estadoVida,
  });

  @override
  String toString() {
    return '$nombre, esta vivo?  ${estadoVida ? 'SISA' : 'Paila'} ';
  }
}

//METOO DE EJECUCION MAIN
void main() {
  //CREANDO E INSTANCIANDO OBJETO
  final yo = Persona(nombre: 'Davo', edad: 26, estadoVida: true);
  print(yo);
}
