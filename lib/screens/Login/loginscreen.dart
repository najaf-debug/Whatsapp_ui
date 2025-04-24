import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Otp/otpscreen.dart';
import 'package:flutter_app/widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = "Pakistan";

  List<String> countries = [
    "America",
    "Africa",
    "Italy",
    "Germany",
    "United Kingdom",
    "United Arab Emirates",
    "Saudi Arabia",
    "Qatar",
    "Iran",
    "Kuwait"
  ];

  @override
  Widget build(BuildContext context) {
    final uniqueCountries = countries.toSet().toList();

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Center(
            child: Uihelper.customText(
                text: "Enter your phone number",
                height: 20,
                color: Color(0xFF00A884),
                fontweight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Uihelper.customText(
              text: "WhatsApp will need to verify your phone", height: 16),
          SizedBox(
            height: 5,
          ),
          Uihelper.customText(
              text: "number. Carrier charges may apply.", height: 16),
          SizedBox(
            height: 5,
          ),
          Uihelper.customText(
              text: " What’s my number?", height: 16, color: Color(0xFF00A884)),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField<String>(
              items: uniqueCountries
                  .map((country) =>
                      DropdownMenuItem(value: country, child: Text(country)))
                  .toList(),
              value: uniqueCountries.contains(selectedCountry)
                  ? selectedCountry
                  : null, // avoid mismatches
              hint: Text(selectedCountry),
              onChanged: (newVal) {
                setState(() => selectedCountry = newVal!);
              },
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "+92",
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00A884))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00A884))),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00A884)))),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00A884)))),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: Uihelper.customButton(
          callback: () {
            login(phoneController.text.toString());
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Enter phone number"),
        backgroundColor: Color(0xFF00A884),
      ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OtpScreen(
                    phonenumber: phonenumber,
                  )));
    }
  }
}
