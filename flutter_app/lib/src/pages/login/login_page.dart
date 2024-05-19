import 'package:flutter/material.dart';

class  LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
        children:[
          //Positioned(child: child),
          Positioned(
      top: -80,
    left:-100,
    children: _circleLogin()
    )
         //Positioned(child: child),
         positioned(
         top: 60,
         left: 25,
    children: _textLogin()
         )

            column(
          children:[
    _textFieldEmail()

    ]
          )

    ]
    )
    )
    );
  }
}

widget_circleLogin(){
  return Container(
    width: 240,
    height: 230,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(i100),
      color: Mycolors.primaryColor
    ),
  );
}

Widget _textLogin(){
  return const Text(
    'LOGIN',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.blod,
      fontSize: 22
    ),
  );
}

Widget _textFieldEmail(){
  return Container(
    decoration: BoxDecoration(
      color: Mycolors.primaryOpacityColor,
      borderRadius: BorderRadius.circular(30)
    ),
    decoration: InputDecorator(
      hintText: 'Correo Electronico',
      border: InputBorder.none,
      contentPadding: edgeInsets.all(15),
      hintStyle: TextStyle(
        color: Mycolors.primaryColorDark,
        ),
      prefixIcon: Icon(
        Icons.email,
        color: Mycolors.primaryColorDark,
      )
    )
  );
}
