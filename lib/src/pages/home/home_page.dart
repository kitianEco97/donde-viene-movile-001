import 'package:donde_viene_app/src/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _controller = new HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.green, Colors.yellow])),
          child: Column(
            children: [
              _bannerApp(context),
              SizedBox(height: 50),
              _textSelectYourRol('Selecciona tu rol'),
              SizedBox(height: 30),
              _imageTypeUser(context, 'assets/img/pasajero.png', 'client'),
              SizedBox(height: 15),
              _textTypeUser('Pasajero'),
              SizedBox(
                height: 35,
              ),
              _imageTypeUser(context, 'assets/img/driver.png', 'driver'),
              SizedBox(height: 15),
              _textTypeUser('Pasajero'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bannerApp(BuildContext context) {
    return ClipPath(
      clipper: DiagonalPathClipperTwo(),
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/img/logo_app.png',
              width: 190,
              height: 150,
            ),
            Image.asset(
              'assets/img/logo11.png',
              width: 150,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  Widget _textSelectYourRol(String rol) {
    return Text(
      rol,
      style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.normal,
          fontFamily: 'Oneday'),
    );
  }

  Widget _imageTypeUser(BuildContext context, String image, String typeUser) {
    return GestureDetector(
      onTap: () {
        _controller.goToLoginPage(typeUser);
        print(typeUser);
      },
      child: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 50,
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _textTypeUser(String typeUser) {
    return Text(
      typeUser,
      style: TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}
