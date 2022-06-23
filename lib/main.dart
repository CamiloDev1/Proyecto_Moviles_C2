import 'package:flutter/material.dart';
import 'package:movil_proyecto_c2/on_boarding.dart';
import 'package:movil_proyecto_c2/pages/login/ChangePassword.dart';
import 'package:movil_proyecto_c2/pages/login/fortgot.dart';
import 'package:movil_proyecto_c2/pages/login/home.dart';
import 'package:movil_proyecto_c2/pages/login/login.dart';
import 'package:movil_proyecto_c2/pages/login/register.dart';
import 'package:movil_proyecto_c2/splash/splas_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Page',
      routes: {
        "/": (context) => HomePage(),
        "login": (contex) => Login(),
        "register": (context) => Register(),
        "fortgot_password": (context) => ForgotPassword(),
        "changepassword": (context) => ChangePassword(),
        "splash_view": (context) => SplashView()
      },
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}
