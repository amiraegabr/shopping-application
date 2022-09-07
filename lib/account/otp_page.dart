import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter the OTP sent to you', style: Theme.of(context).textTheme.bodyText2),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
