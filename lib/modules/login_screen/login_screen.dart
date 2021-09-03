
import 'package:flutter/material.dart';
import 'package:meal/modules/signup_screen/signup_screen.dart';
import 'package:meal/modules/first_screen/first_screen.dart';
import 'package:meal/shared/components/components.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static final  String id = 'loginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(

            children: [Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,)
,
            Text('Add your details to login',style: TextStyle(fontSize: 16)),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              CustomTextField(
   hintText: 'Your Email',keyboardType: TextInputType.emailAddress,

 ),
             SizedBox(height: MediaQuery.of(context).size.height*0.03,)
,
             CustomTextField(
               hintText: 'Password',
               keyboardType: TextInputType.visiblePassword
               ,isSecure: true
             ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,)
              ,
              CustomElevatedButton(buttonText: 'Login', onPressed: (){},buttonColor: Colors.deepOrange)
              ,
              // CustomMaterialButton(
              //     onPressed: (){
              //       Navigator.of(context).pushNamed(SplashScreen.id);
              //
              //
              //     },
              //     buttonText: 'Forgot your password?'),

              SizedBox(height: MediaQuery.of(context).size.height*0.03,)
              ,
              GestureDetector(

                  onTap: (){
                    Navigator.of(context).pushNamed(SignUpScreen.id);


                  },
                  child: Text('Forgot your password?',style: TextStyle(),)),
            SizedBox(height: MediaQuery.of(context).size.height*0.04,)
            ,
Text('or Login With')
            ,
              SizedBox(height: MediaQuery.of(context).size.height*0.04,)
              ,


              CustomElevatedButton(buttonText: 'Login with Facebook', onPressed: (){},buttonColor: Colors.blueAccent),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,)
              ,

              CustomElevatedButton(buttonText: 'Login with Google', onPressed: (){},buttonColor: Colors.red),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,)
              ,
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Dont have an Account? ')
               , GestureDetector(

                      onTap: (){
                        Navigator.of(context).pushNamed(SignUpScreen.id);


                      },
                      child: Text('Sign Up',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),))
                ,
              ],)

            ],


          ),
        ),
      ),
    ),

    );
  }
}
