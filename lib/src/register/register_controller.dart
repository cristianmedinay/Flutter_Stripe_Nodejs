
import 'package:flutter/material.dart';

class RegisterController{

      late BuildContext context;
      TextEditingController emailController = new TextEditingController();
      TextEditingController nameController = new TextEditingController();
      TextEditingController lastnameController = new TextEditingController();
      TextEditingController phoneController = new TextEditingController();
      TextEditingController passwordController = new TextEditingController();
      TextEditingController confirmPasswordController = new TextEditingController();

      Future<void> init(BuildContext context) async{
        this.context = context;
      }

      

}