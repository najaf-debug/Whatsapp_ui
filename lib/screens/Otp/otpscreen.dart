// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/uihelper.dart';

class OtpScreen extends StatelessWidget {
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  String phonenumber;
  OtpScreen({required this.phonenumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Uihelper.customText(
                text: "Verifying your number",
                height: 20,
                color: Color(0xFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(
              height: 20,
            ),
            Uihelper.customText(
                text: "You’ve tried to register +92${phonenumber}", height: 15),
            SizedBox(
              height: 5,
            ),
            Uihelper.customText(
                text: "recently. Wait before requesting an sms or a call.",
                height: 15),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(text: "with your code. ", height: 15),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Uihelper.customText(
                        text: "Wrong number?",
                        height: 15,
                        color: Color(0xFF00A884)))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customContainers(otp1Controller),
                SizedBox(
                  width: 10,
                ),
                Uihelper.customContainers(otp2Controller),
                SizedBox(
                  width: 10,
                ),
                Uihelper.customContainers(otp3Controller),
                SizedBox(
                  width: 10,
                ),
                Uihelper.customContainers(otp4Controller),
                SizedBox(
                  width: 10,
                ),
                Uihelper.customContainers(otp5Controller),
                SizedBox(
                  width: 10,
                ),
                Uihelper.customContainers(otp6Controller),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Uihelper.customText(
                text: "Didn’t receive code?",
                height: 14,
                color: Color(0xFF00A884))
          ],
        ),
      ),
      floatingActionButton:
          Uihelper.customButton(callback: () {}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
