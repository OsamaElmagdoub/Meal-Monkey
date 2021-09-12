
import 'package:flutter/material.dart';
import 'package:meal/modules/otp_screen/otp_screen.dart';
import 'package:meal/shared/components/components.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  static final  String id ='resetPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SafeArea(
    child: Padding(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(child:

        Center(
          child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              Text('Reset Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                'Please enter your email to receive a link to create a new password via email',style: TextStyle(fontSize: 18),textAlign: TextAlign.center,)
              ,SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              CustomTextField(hintText: 'Email', keyboardType: TextInputType.emailAddress)
              ,

            SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
  ),
              CustomElevatedButton(onPressed: (){

                Navigator.pushNamed(context, OtpScreen.id);

              },buttonText: 'Send',buttonColor: Colors.deepOrange,)

            ],

          ),
        )

        ,),
    ),
  ),
      
      
    );
  }
}
