void main() async{

  print('inicio edl programa');

  try {


    final value = await httpGet('https://fernando-herrera.com/cursos');
    print (value);
  }  catch (err) {
    print('tenemos un error: $err');
  }


  print('fin del progama');
}


Future <String> httpGet( String url) async {

  await Future.delayed( const Duration(seconds:1));

  throw 'Errror en la peticion';

  // return 'tenemos un valor de la peticion';
}