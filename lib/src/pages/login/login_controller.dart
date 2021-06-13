import 'package:flutter/material.dart';

class LoginController {
  BuildContext context;
  GlobalKey<ScaffoldState> key = new GlobalKey<ScaffoldState>();

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Future init(BuildContext context) {
    this.context = context;
  }

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('email: $email');
    print('password: $password');
  }
}
