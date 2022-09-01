import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/screens/home_screen.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);
  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_m3mzsgwp.json'),
          ],
        ),
      ),
    );
  }
}
