// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Home/Contact/contactscreen.dart';
import 'package:flutter_app/widgets/uihelper.dart';

class chatsScreen extends StatelessWidget {
  chatsScreen({super.key});
  var arrContent = [
    {
      "images": "assets/images/profile_picture.png",
      "name": "Kelly",
      "lastmsg": "Call me ASAP!",
      "time": "05:45 pm",
      "msgs": "7"
    },
    {
      "images": "assets/images/profile_picture2.jpg",
      "name": "Aron",
      "lastmsg": "yeah i delievered it yesterday",
      "time": "10:00 am",
      "msgs": "2"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage(arrContent[index]["images"].toString()),
                  ),
                  title: Uihelper.customText(
                      text: arrContent[index]["name"].toString(),
                      height: 14,
                      fontweight: FontWeight.bold),
                  subtitle: Uihelper.customText(
                      text: arrContent[index]["lastmsg"].toString(),
                      height: 13,
                      color: Color(0xFF889095)),
                  trailing: Column(
                    children: [
                      Uihelper.customText(
                          text: arrContent[index]["time"].toString(),
                          height: 12,
                          color: Color(0xFF026500)),
                      SizedBox(
                        height: 8,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Color(0xFF00A884),
                        child: Uihelper.customText(
                            text: arrContent[index]["msgs"].toString(),
                            height: 12,
                            color: Color(0xFFFFFFFF)),
                      )
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContactScreen()));
        },
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xFF00A884),
          child: Image.asset("assets/images/chats.png"),
        ),
      ),
    );
  }
}
