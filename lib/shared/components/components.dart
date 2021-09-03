




import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomElevatedButton(
{
  required String buttonText ,
  required VoidCallback onPressed,
  Color buttonColor = Colors.white,
  Color textColor = Colors.white,
  Color borderColor = Colors.white,


}
    )=>
SizedBox(
width:double.infinity,
  height: 60,
  child:   ElevatedButton(

style: ButtonStyle(


backgroundColor: MaterialStateProperty.all(buttonColor),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(
    
    borderRadius: BorderRadius.circular(30),
side: BorderSide(color: borderColor)

  )),

),


      onPressed: onPressed, child: Text(

    buttonText,


    style: TextStyle(

    color: textColor
  ),),
));


Widget CustomTextField (

{
  required String hintText ,
  required TextInputType keyboardType ,
  bool isSecure= false
}


    )=>TextField(

  obscureText: isSecure,
keyboardType: keyboardType,
  decoration: InputDecoration(
   // focusedBorder: OutlineInputBorder(borderSide: ),
contentPadding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(

)),
 filled: true,
   // fillColor: Colors.grey,
    hintText: hintText

  ),

    style: TextStyle(color: Colors.black54),






    );

Widget CustomMaterialButton (

{required String buttonText ,

Color buttonColor = Colors.black54
,required Function onPressed ,
}

    )=>MaterialButton(


    onPressed: onPressed(), child: Text(buttonText,style: TextStyle(color: buttonColor),));