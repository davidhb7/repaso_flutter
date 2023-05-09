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
  //final yo = Persona(nombre: 'Davo', edad: 26, estadoVida: true);

  //SIMULANDO JSON
  //-Al ser dynamic, hay posibilidad de null
  final Map<String, dynamic> rawYo = {
    'nombre': 'Davo',
    'edad': 26,
    'estadoVida': true,
  };
  //IMPLEMENTANDO EL rawJson
  final yo = Persona(
    nombre: rawYo['nombre'] ?? '', //SÍ ES NULO, PONE VACIO
    edad: rawYo['edad'] ?? 0, 
    estadoVida: rawYo['estadoVida'] ?? false
  );

  print(yo);
}
