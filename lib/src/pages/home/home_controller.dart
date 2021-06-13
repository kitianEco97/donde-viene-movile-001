import 'package:flutter/material.dart';

class HomeController {
  BuildContext context;

  Future init(BuildContext context) async {
    this.context = context;
  }

  void goToLoginPage(String typeUser) {
    Navigator.pushNamed(context, 'login');
  }
}
