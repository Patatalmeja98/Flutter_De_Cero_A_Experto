void main() async {


  print('Inicio del programa');

  try {


    final value = await httpGet(' https://fernando-herrera.com/cursos');
    print('exito: $value');

  } on Exception catch(err){
    print('Tenemos una Exception: $err');

  } catch (err) {
    print('OOp¡¡ algo terrible paso: $err');

  } finally {
    print('Fin del try y catch');

  }


  print('Fin del programa');
}

Future<String> httpGet( String url) async {

  await Future.delayed( const Duration(seconds: 1));

  throw Exception('no hay parametros en el URL');

  // throw 'erro de la peticion'
  // return 'tenemos un valor de la peticion'
}