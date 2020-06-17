import 'dart:async';
import 'dart:convert';


import 'package:http/http.dart' as http;

Future<LoginUser> login(username,password) async {
  final response =
      await http.post('https://less-django-rest.herokuapp.com/api/v1/login',
      headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': username,
      'password':password
    }),
  );

  if (response.statusCode == 200) {
    // Si la llamada al servidor fue exitosa, analiza el JSON
    return LoginUser.fromJson(json.decode(response.body));
  } else {
    // Si la llamada no fue exitosa, lanza un error.
    return LoginUser();
  }
}

class LoginUser {
  final String token;
  final int userId;
  final String username;

  LoginUser({this.token, this.userId, this.username});

  factory LoginUser.fromJson(Map<String, dynamic> json) {
    return LoginUser(
      token: json['token'],
      userId: json['user_id'],
      username: json['username']
    );
  }
}