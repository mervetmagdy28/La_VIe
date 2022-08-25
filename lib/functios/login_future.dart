import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<int> login(String email, String password) async {
  int statusCode = -1;
  try {
    var response = await Dio()
        .post('https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signin',
            data: {
              "email": email,
              "password": password,
            },
            options: Options(headers: {
              'Content-Type': 'application/json; charset=utf-8',
            }));

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("accessToken", response.data['data']['accessToken']);

    if (response.statusCode == 200) {
      statusCode = 200;
    } else {
      statusCode = 400;
    }
    if (kDebugMode) {
      print(response.data);
    }
  } on DioError catch (error) {
    if (kDebugMode) {
      print(error.response!.data['message']);
    }
  }
  return statusCode;
}
