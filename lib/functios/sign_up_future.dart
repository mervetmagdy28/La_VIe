import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Future<void> signUp(String firstName, String lastName, String email, String password) async {
  try {
    var response = await Dio()
        .post('https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signup',
        data: {
          "firstName": firstName,
          "lastName": lastName,
          "email": email,
          "password": password,
        },
        options: Options(headers: {
          'Content-Type': 'application/json; charset=utf-8',
        }));
    if (kDebugMode) {
      print(response.data);
    }
  } on DioError catch (error) {
    if (kDebugMode) {
      print(error.response!.data['message']);
    }
  }
}