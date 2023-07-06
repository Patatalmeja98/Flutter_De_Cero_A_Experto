void main () {
   
   final Hero wolverine = Hero('logan','Regeneración');
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

   



}
