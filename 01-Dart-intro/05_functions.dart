void main (){
   
   print( greetEveryone() );

   print( 'suma: ${ addTwoNumbers( 10,20)}');
   
   print( greetPerson(  name: 'Fernando', message: 'Hi,'));
}

String greetEveryone() => 'Hello Everyone';
int addTwoNumbers( int a, int b) =>a + b;
int addTwoNumbersOptional( int a, [ int b=0]) {
  
   //b ??=0
   
   return a + b ;
}

  String greetPerson({  required String name, String message = 'hola,'}){
    return '$message Fernando';
  
  }