import 'package:flipcart_clone/accounts/login_page.dart';
import 'package:flipcart_clone/fixed.dart';
import 'package:flipcart_clone/home/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 5), () {});

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Fix()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            image: new DecorationImage(
                image: AssetImage("img_logo/fliplogo.jpeg"), fit: BoxFit.fill)),
      ),
    );
  }
}
