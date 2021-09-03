import 'package:flutter/material.dart';
import 'package:meal/modules/login_screen/login_screen.dart';
import 'package:meal/modules/signup_screen/signup_screen.dart';

import 'package:meal/shared/components/components.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
  static final String id = 'firstscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(alignment: AlignmentDirectional.topStart, children: [
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children:[

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,

                      ),

                      width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.45,

                    ),
            Container(
              width: 180,
              height: 100,

              decoration: BoxDecoration(

                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(180,),topRight: Radius.circular(180),
                
                ),
              ),
            )


                ]),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

         // Image.asset('monkey.png'),
              Image( image: AssetImage('images/monkey.png'),),


              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                Text('Meal ',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                Text('Monkey',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),

              ]),


              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),


              Text('Food delivery'.toUpperCase(),style: TextStyle(


              ),),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),

              Text(
                'Discover the best foods from over 1000 resturants and fast delivery to your doorstep',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              CustomElevatedButton(
                  buttonText: "Login",
                  onPressed:()=>

                    Navigator.of(context).pushNamed(LoginScreen.id)

                  ,
                  buttonColor: Colors.deepOrange),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomElevatedButton(
                  buttonText: 'Create an Account',
                  onPressed:()=>

                      Navigator.of(context).pushNamed(SignUpScreen.id),
                  textColor: Colors.deepOrange,
                  borderColor: Colors.deepOrange),
            ],
          ),
        ),
      ]),
    );
  }
}
