void main(){

      final Map<String, dynamic> rawJason = {
        'name': 'tony Stark',
        'power': 'money ',
        'isAlive': true
      };

     final ironman = Hero.fromJson( rawJason);

      //final irooman = Hero(
       // isAlive: false,
      //power: 'Money',
      //name: 'Tony Starck'
      //);
      print ( ironman);

}
class Hero  {

     String name ;
     String power;
     bool isAlive;


     Hero ({
      required this.name,
      required this.power,
      required this.isAlive 
     });
     
     Hero.fromJson( Map<String, dynamic> json)
     : name = json['name'] ?? 'No name found',
       power = json ['power'] ?? 'no powe found',
       isAlive = json ['isAlive'] ?? 'No isAlive found';

    @override
    String toString() {
       return '$name, $power, isAlive: ${ isAlive ? 'Yes¡':'Nope'}';

    }

}