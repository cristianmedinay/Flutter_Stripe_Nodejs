import 'package:flutter/material.dart';

class LoginController {

  late BuildContext context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();


   Future<void> init(BuildContext context) async {
    this.context = context;
  }

  void goToRegisterPage(){
    Navigator.pushNamed(context, 'register');
  }

  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('Email: $email');
    print('Email: $password');

  }


}