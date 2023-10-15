import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class LoginApi extends StatefulWidget {
  const LoginApi({Key? key}) : super(key: key);

  @override
  State<LoginApi> createState() => _LoginApiState();
}

class _LoginApiState extends State<LoginApi> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login(String email, password) async {
    try {
      Response response =
          await http.post(Uri.parse('https://reqres.in/api/register'), body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['id']);
        print('account created successfully');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        TextField(
            controller: emailController,
            decoration: const InputDecoration(hintText: 'Email')),
        const SizedBox(
          height: 20,
        ),
        TextField(
            controller: passwordController,
            decoration: const InputDecoration(hintText: 'Password')),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {
              login(emailController.text.toString(),
                  passwordController.text.toString());
            },
            child: const Text("Login"))
      ],
    ));
  }
}
