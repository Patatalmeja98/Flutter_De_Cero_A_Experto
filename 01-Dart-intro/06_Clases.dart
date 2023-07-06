void main () {
   
   final Hero wolverine = Hero(name:'logan',power:'Regeneración');
   print ( wolverine) ;
   print ( wolverine.name) ;
   print ( wolverine.power) ;

}


class Hero {
   
   String name;
   String power;

  Hero({
    required this.name, 
    this.power = 'sin poder'
    });
   //Hero( String pName, String pPower)
   //   : name = pName,
   //   power = power;


   @override
   String toString() {
     return '$name -$power';
   }
   

   



}
