import 'package:flutter/material.dart';
import 'package:meal/modules/login_screen/login_screen.dart';
import 'package:meal/modules/signup_screen/signup_screen.dart';
import 'package:meal/modules/first_screen/first_screen.dart';
import 'package:meal/modules/splash_screen/splash_screen.dart';
main(){

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: SplashScreen.id,
      routes: {
       SplashScreen.id:(context)=>SplashScreen(),
    FirstScreen.id:(context)=>FirstScreen(),
LoginScreen.id:(context)=>LoginScreen(),
SignUpScreen.id:(context)=>SignUpScreen(),

    },

    );
  }
}
