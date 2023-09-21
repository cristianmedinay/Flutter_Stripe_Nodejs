import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_nodejs_stripe/src/register/register_controller.dart';

import '../utils/my_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final RegisterController _con = new RegisterController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(              
              top: -80,
              left: -100,
              child: _circle(),
            ),
            Positioned(
              child: _textRegister(),
              top: 65,
              left: 27,
            ),
            Positioned(
              child: _iconBack(),
              top: 51,
              left: -5,
            ),
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 150),
                child: Column(
                  children: [
                    _imageUser(),
                    SizedBox(height: 30,),
                    _TextFieldEmail(),
                    _TextFieldName(),
                    _TextFieldApellido(),
                    _TextFieldPassword(),
                    _buttonLogin(),
                  ],
                ),
              ),
            )

          ],
          
        ),
      ),
    );
  }
  Widget _TextFieldEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30) 
      ),
      child: TextField(
          controller:_con.emailController,
          keyboardType:TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Correo electronico',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: MyColors.primaryColorDark
            ),
            prefixIcon: Icon(Icons.email,color:MyColors.primaryColor)
        ),
      ),
    );
  }
   Widget _TextFieldName(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30) 
      ),
      child: TextField(
          controller: _con.nameController,
          decoration: InputDecoration(
            hintText: 'Nombre',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: MyColors.primaryColorDark
            ),
            prefixIcon: Icon(Icons.person,color:MyColors.primaryColor)
        ),
      ),
    );
  }
   Widget _TextFieldPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30) 
      ),
      child: TextField(
          obscureText: true,
          controller: _con.passwordController,
          decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: MyColors.primaryColorDark
            ),
            prefixIcon: Icon(Icons.password,color:MyColors.primaryColor)
        ),
      ),
    );
  }
   Widget _TextFieldApellido(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30) 
      ),
      child: TextField(
          controller: _con.lastnameController,
          decoration: InputDecoration(
            hintText: 'Apellido',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: MyColors.primaryColorDark
            ),
            prefixIcon: Icon(Icons.person_2_outlined,color:MyColors.primaryColor)
        ),
      ),
    );
  }
  Widget _imageUser(){
    return CircleAvatar(
      backgroundImage: AssetImage('assets/img/user_profile_2.png'),
      radius: 60,
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _circle(){
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: MyColors.primaryColor,
      ),
    );
  }


  Widget _iconBack(){
    return IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color:Colors.white));
  }


  Widget _textRegister(){
    return
        Text(
          'REGISTRO',
          style:TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'NimbusSans'
          )
        );
      
  }

  Widget _buttonLogin(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 50),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){},
        child: Text('REGISTRARSE'),
        style:ElevatedButton.styleFrom(
          backgroundColor: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          padding: EdgeInsets.symmetric(vertical: 15)
        )
        
        ),
    );
  }
}


/*Widget _textLogin(){
    return Text(
      'Login',
      style:TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22,
        fontFamily: 'NimbusSans'
      )
    );
  }
 */
   