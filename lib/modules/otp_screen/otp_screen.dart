
import 'package:flutter/material.dart';
import 'package:meal/shared/components/components.dart';
class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  static final  String id ='otpPassword';
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

                Text('We have sent an OTP to your Mobile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),textAlign: TextAlign.center,),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  'Please check your mobile number 010******26 continue to reset your password',style: TextStyle(fontSize: 18),textAlign: TextAlign.center,)
                ,SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                CustomTextField(hintText: 'Email', keyboardType: TextInputType.emailAddress)
                ,

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                CustomElevatedButton(onPressed: (){},buttonText: 'Send',buttonColor: Colors.deepOrange,)
,

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont Receive?  ')
                    , GestureDetector(

                        onTap: (){
                        //  Navigator.of(context).pushNamed(SignUpScreen.id);


                        },
                        child: Text('Click Here',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),))
                    ,
                  ],)

              ],

            ),
          )

            ,),
        ),
      ),


    );
  }
}
