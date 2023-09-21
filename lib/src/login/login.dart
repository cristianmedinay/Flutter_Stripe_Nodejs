import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_nodejs_stripe/src/login/login_controller.dart';
import 'package:flutter_nodejs_stripe/src/utils/my_colors.dart';
import 'package:lottie/lottie.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //encapsulamiento private String _name='';
  LoginController _con = new LoginController();

  @override
  void initState() {
    // TODO: implement initState
    print('INIT ');
    //lo primero que se ejecuta
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
     /*    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10), */
        child: Stack(
          children: [
            Positioned(
              top:-80,
              left: -100,
              child:              
                _circleLogin(),       
            ),
            Positioned(
              child: _textLogin(),
              top: 60,
              left: 30,
              ),
            SingleChildScrollView(
              child: Column(          
                children: [     
                 // imageBanner(),
                 
                  animationBanner(),
                  _TextFieldEmail(),
                  _TextFieldContrasena(),
                  _buttonLogin(),
                  textAccount()
                  
                ],
              ),
            ),
          ],
        ),
      ),
      /* appBar: AppBar(title: Text('Flutter Delivery App'),),
      body: Stack(
        children: [          
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: Colors.lime

            ),
          ),
          Container(
            margin: EdgeInsets.only(top:60,left: 60),
            child: Text('LOGIN'),
          )
        ],
      ) */
     
      
    );
  }
  
  Widget textAccount(){
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('¿No tienes cuenta?',style: TextStyle(color: MyColors.primaryColor)),
                SizedBox(width: 15),
                GestureDetector(
                  child: Text('Registrate',style: TextStyle(fontWeight: FontWeight.bold,color:MyColors.primaryColor)),
                  onTap: _con.goToRegisterPage,
                  
                  )
              ],
            );
  }

  Widget _buttonLogin(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 50),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _con.login,
        child: Text('Ingresar'),
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

  Widget _TextFieldEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30) 
      ),
      child: TextField(
          controller: _con.emailController,
          keyboardType: TextInputType.emailAddress,
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
  Widget _TextFieldContrasena(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30) 
      ),
      child: TextField(
          controller:_con.passwordController,
          decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: MyColors.primaryColorDark
            ),
            prefixIcon: Icon(Icons.lock,color:MyColors.primaryColor)
        ),
      ),
    );
  }

  Widget _textLogin(){
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


  Widget _circleLogin(){
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: MyColors.primaryColor,
      ),
    );
  }


  Widget animationBanner(){
    return Container(
      margin: EdgeInsets.only(top:150,bottom: MediaQuery.of(context).size.height*0.15),
      child: Lottie.asset('assets/json/animation.json',width: 350,height: 200,fit:BoxFit.fill));
  }


  Widget imageBanner (){
    return Container(
      margin: EdgeInsets.only(top:100,bottom: MediaQuery.of(context).size.height*0.25),
      child: Image.asset('assets/img/delivery.png',width: 200,height: 200,));
  }

}

/**
 * 
Column(
        children:[        
         
         SizedBox(height: 20,),
         Text('Hola mundo'),
         SizedBox(height: 20,),
         Container(
          color: Colors.blueAccent,
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
           child: TextField(
            decoration: InputDecoration(hintText: 'Descripcion'),
            maxLines: 2,
            
           ), ),
         ElevatedButton(onPressed: (){}, child: Text('Continuar')),
         Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [          
          ElevatedButton(onPressed: (){}, child: Text('Datos')),          
          ElevatedButton(onPressed: (){}, child: Text('Datos'))
          ],
         ),
        ]  
      ),


 */