import 'package:flutter/material.dart';
import 'package:nav_bar/widgets/app_navigation.dart';
import 'forgotpassword_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                Text(
                  'Welcome back!',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 10),
                Text('Log in'),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Username or Email'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Password'),
                ),
                Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ForgotPassword())));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Color(0xff0C264A)),
                        ))),
                SizedBox(height: 10),
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
                          return appnavigation();
                        }));
                      },
                      child: Text('Log in')),
                ),
                SizedBox(
                  height: 10,
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
