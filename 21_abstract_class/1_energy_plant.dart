void main(){
  final windPlant = WindPlant(initialEnergy: 100);
  print(windPlant);
  print('Wind: ${chargePhone(windPlant)}', );

  final  nuclearPlant = NuclearPlant(energyLeft: 1000);
  print(nuclearPlant);
  print('Nuclear: ${chargePhone(nuclearPlant)}', );

}


//METDO QUE CONSUME LAS CLASES Y SUS METODOS
double chargePhone(EnergyPlant plant){
  if(plant.energyLeft<=10){
    throw Exception("Not engough energy");
  }
  return plant.energyLeft-10;
}


//ESTILO DE ENUMERACION Y CONTENCION DE EN ESTE CASO, TIPOS DE PLANTAS.
//SUBTIPO INSTANCIADO, PARA REEMPLAZAR TIPO DE VARIABLE
enum  PlantType{nuclear, wind, water}


//CLASE ABSTRACTAS, NO PUEDEN SER INICIALIZADAS, USAR INSTANCIA EN CONCRETO O SUBTIPO.
abstract class EnergyPlant {
  //si no hay constructor, arroja error de non-nullable
   double energyLeft;
   final PlantType type;

  //CONSTRUCTOR
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy(double amount);
}
//EXTENDS: extender o heredar de una clase
//Hereda variables, metodos y constructor
class WindPlant extends EnergyPlant{
  //metodos de abstracta deben implementarse
  //llamar o implementa constructor padre es con "super"
  WindPlant({
    required double initialEnergy,
    }) : super(energyLeft: initialEnergy, type: PlantType.wind);
    
      @override
      void consumeEnergy(double amount) {
      energyLeft -= amount;
      }
}


//IMPLEMENTS, utiliza solo una parte o un metodo en concreto de la clase padre o abstracta (CONTRARIO DEL EXTENDS)
class NuclearPlant implements EnergyPlant {
    double energyLeft;
    final PlantType type = PlantType.nuclear;

   NuclearPlant({
    required this.energyLeft,
   });
   
     @override
     void consumeEnergy(double amount) {
      energyLeft -= (amount*0.5);
     }

}





