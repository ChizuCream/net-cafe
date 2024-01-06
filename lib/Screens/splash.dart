import 'dart:async';
import 'package:flutter/material.dart';
import 'package:net_cafe_app/Page/auth_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () {
        // Pindah ke halaman berikutnya setelah splash screen selesai
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => AuthPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/logo.png'),
              width: 100,
              height: 100,
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
