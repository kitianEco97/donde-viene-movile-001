import 'package:donde_viene_app/src/pages/login/login_page.dart';
import 'package:flutter/material.dart';

import 'package:donde_viene_app/src/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '¿Donde viene?',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => HomePage(),
          'login': (BuildContext context) => LoginPage()
        });
  }
}
