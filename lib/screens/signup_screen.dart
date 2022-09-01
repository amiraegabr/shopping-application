import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Email'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Username'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Password'),
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff0C264A),
                        minimumSize: Size(350, 40),
                      ),
                      onPressed: () {
                        //validation
                        Navigator.pop(context);
                      },
                      child: Text('Sign up')),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a member?',
                        style: TextStyle(color: Colors.blueGrey)),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          }));
                        },
                        child: Text('Log in',
                            style: TextStyle(color: Color(0xff0C264A))))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
