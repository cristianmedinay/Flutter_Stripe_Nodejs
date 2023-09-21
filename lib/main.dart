import 'package:flutter/material.dart';
import 'package:flutter_nodejs_stripe/src/login/login.dart';
import 'package:flutter_nodejs_stripe/src/register/register_page.dart';
import 'package:flutter_nodejs_stripe/src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Devivery App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login':(BuildContext context) => LoginPage(),
        'register':(BuildContext context) => RegisterPage()
      },
      theme: ThemeData(
        primaryColor: MyColors.primaryColor,
        fontFamily: 'NimbusSans'
      ),
      
    );
  }
}