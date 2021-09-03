import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal/modules/login_screen/login_screen.dart';
import 'package:meal/shared/components/components.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static final String id = 'SignUpScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text('Add your details to sign up '),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomTextField(
                hintText: 'Name',
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomTextField(
                hintText: 'Email',
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomTextField(
                hintText: 'Mobile No',
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomTextField(
                hintText: 'Address',
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomTextField(
                hintText: 'Passsword',
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomTextField(
                hintText: 'Confirm Passsword',
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomElevatedButton(
                  buttonText: 'Sign Up',
                  onPressed: () {},
                  buttonColor: Colors.deepOrange),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an Account '),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(LoginScreen.id);

                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
