void main(){
   
   final windPlant = WindPlant ( initialEnergy: 100);
   final nuclearPlant = NuclearPlant( energyleft: 1000);

   print( ' wind: ${ chargePhone( winPlant)}');
   print( ' nuclear: ${chargePhone( nuclearPlant)}');

}


   double chargePhone ( EnergyPlant plant){
    if ( plant.energyleft < 10){
      throw Exception ('not enough energy');

    }

    return plant.energyleft - 10;
   }



    enum PlantType {nuclear, wind, water}


    abstract class EnergyPlant{

      double energyleft;
      final PlantType type;    //nuclear, wind, water

      EnergyPlant({
       required this.energyleft,
       required this.type

      });
       void consumeEnergy( double amount);

    }

    //extends o implements
    class WindPlant extends EnergyPlant {
        
        WindPlant({ required double initialEnergy})
        : super ( energyleft: initialEnergy, type: PlantType.wind );

        @override
        void consumeEnergy ( double amount){
          energyleft -= amount;
        }
    }

    class NuclearPlant implements  EnergyPlant{
       @override
       double energyleft;

       @override
       final PlantType type= PlantType.nuclear;
       NuclearPlant({ required this.energyleft});

       @override
       void consumeEnergy (double amount){
        energyleft -= -(amount * 0.5);
       }

    }
