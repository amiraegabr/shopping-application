import 'package:flutter/material.dart';
import 'package:nav_bar/account/otp_page.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Please enter Email for an OTP password'),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Email'),
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff0C264A),
                        minimumSize: Size(350, 40),
                      ),
                      onPressed: () {
                        //validation
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return OTPScreen();
                        }));
                      },
                      child: Text('Send OTP')),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New member?',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => SignupScreen())));
                        },
                        child: Text('Sign up',
                            style: TextStyle(
                              color: Color(0xff0C264A),
                            )))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
