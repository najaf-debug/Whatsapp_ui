import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Login/loginscreen.dart';
import 'package:flutter_app/widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/boarding.png"),
            SizedBox(
              height: 20,
            ),
            Uihelper.customText(
              text: "Welcome to WhatsApp",
              height: 20,
              color: Color(0xFF000000),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(text: "Read out", height: 14),
                Uihelper.customText(
                    text: " Privacy Policy. ",
                    height: 14,
                    color: Color(0xFF0C42CC)),
                Uihelper.customText(
                    text: "Tap ''agree and continue''", height: 14),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(text: "to accept the ", height: 14),
                Uihelper.customText(
                    text: "Teams of Services",
                    height: 14,
                    color: Color(0xFF0C42CC)),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Uihelper.customButton(
          callback: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          buttonname: "Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
