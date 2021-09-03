import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meal/modules/first_screen/first_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
 static final String id = 'splash-screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
Timer(Duration(seconds: 2),()=> Navigator.of(context).pushReplacementNamed(FirstScreen.id));

}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage('images/launch_image.png'),),
    );
  }
}
