import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> registerUser({
  required String firstName,
  required String lastName,
  required String about,
  required String socialMedia,
  required String password,
  required String confirmPass,
  required String email,
  required String birthDay,
  required double tags,
  required int salary,
  required int type,
  bool? gender,
}) async {
  const url = 'https://test.kafiil.com/api/test/user/register';
  try {
    var response = await http.post(
      Uri.parse(url),
      headers: {
        'Accept': 'application/json',
        'Accept-Language': 'ar',
        'Content-Type': 'multipart/form-data',
      },
      body: jsonEncode({
        'first_name': firstName,
        'last_name': lastName,
        'about': about,
        'tags': tags,
        'favorite_social_media': socialMedia,
        'salary': salary,
        'password': password,
        'email': email,
        'birth_date': birthDay,
        'gender': gender,
        'type': type,
        'password_confirmation': confirmPass,
      }),
    );
    print('Response status: ${response.statusCode}');
    print('Response data: ${response.body}');
    // var response = await dio.post(
    //   'https://test.kafiil.com/api/test/user/register',
    //   options: Options(
    //     headers: {
    //
    //     },
    //   ),
    //   data: {
    //     'first_name': firstName,
    //     'last_name': lastName,
    //     'about': about,
    //     'tags[]': tags,
    //     'favorite_social_media[]': socialMedia,
    //     'salary': salary,
    //     'password': password,
    //     'email': email,
    //     'birth_date': birthDay,
    //     'gender': gender,
    //     'type': type,
    //     'password_confirmation': confirmPass,
    //   },
    // );

    // print('Response status: ${response.statusCode}');
    // print('Response data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
