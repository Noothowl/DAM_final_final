import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Provider {
  final String apiURL = 'http://127.0.0.1:8000/api';

  get SharedPrerefences => null;

  //para enviar los datos o credenciales de acceso
  // desde el cliente vía post a la api (eamil y password)
  Future<bool> login(String email, String password) async {
    var uri = Uri.parse('$apiURL/login');
    var respuesta = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

  //para ver si la data trae un mensaje de error
    var data = jsonDecode(respuesta.body);

    //la versión larga
    /*   if (data['access_token'] != null) {
      return true;
    } else {
      return false;
    } */

    //versión corta... para revisar si el inicio de sesión está ok
    //return data['access_token'] != null;

  //si esto fue ok entonces para decirle a la api q recuerde el nombre de usuario y el token

   if (data['access_token'] != null) {
      SharedPreferences sp = await SharedPreferences.getInstance();

      sp.setString('access_token', data['access_token']);
      sp.setString('user_email', data['user']['email']);
      sp.setString('user_name', data['user']['name']);
    } else {}
    return data['access_token'] != null;
  } 


  Future<List<dynamic>> getMonturas() async {
    var url = Uri.parse('$apiURL/monturas');
    var respuesta = await http.get(url);  
    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else {
      return [];
    }
  }

}
