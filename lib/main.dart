import 'package:flutter/material.dart';
import 'package:untitled/screens/splash_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffD0E2EE),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 26,
              color: Color(0xff0C264A),
              fontWeight: FontWeight.bold),
          headline2: TextStyle(
            fontSize: 24,
            color: Color(0xff0C264A),fontWeight: FontWeight.bold
          ),
          bodyText1: TextStyle(
              fontSize: 18,
              color: Color(0xff0C264A),
              fontWeight: FontWeight.w500),
          bodyText2: TextStyle(
            fontSize: 16,
            color: Color(0xff0C264A),
            fontWeight: FontWeight.w500,
          ),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(color: Color(0xff0C264A) , fontSize: 26 , fontWeight: FontWeight.bold),
          centerTitle: true,
          iconTheme: IconThemeData(color: Color(0xff0C264A))
        ),
      ),
      home: SplashScreen(),
    );
  }
}
