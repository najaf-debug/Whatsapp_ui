// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/uihelper.dart';

class StatusScreen extends StatelessWidget {
  StatusScreen({super.key});
  var statusContent = [
    {
      "img":
          "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?semt=ais_hybrid&w=740",
      "name": "Aron",
      "statustime": "14h ago",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
      "name": "Jennie",
      "statustime": "15min ago",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1689530775582-83b8abdb5020?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fHww",
      "name": "Franklin",
      "statustime": "2h ago",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740",
      "name": "Roger",
      "statustime": "8h ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.customText(
                text: "Updates",
                height: 20,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://greekherald.com.au/wp-content/uploads/2020/07/default-avatar.png"),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xFF008069),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Color(0xFFFFFFFF),
                        size: 15,
                      ),
                    ),
                  ),
                )
              ]),
            ),
            title: Uihelper.customText(
                text: "My Status", height: 20, fontweight: FontWeight.bold),
            subtitle: Uihelper.customText(
                text: "Tap to add status update", height: 15),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Uihelper.customText(text: "Recent updates", height: 15),
                Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xFF5E5E5E),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(statusContent[index]["img"].toString()),
                  ),
                  title: Uihelper.customText(
                      text: statusContent[index]["name"].toString(),
                      height: 16,
                      fontweight: FontWeight.bold),
                  subtitle: Uihelper.customText(
                      text: statusContent[index]["statustime"].toString(),
                      height: 14),
                );
              },
              itemCount: statusContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
