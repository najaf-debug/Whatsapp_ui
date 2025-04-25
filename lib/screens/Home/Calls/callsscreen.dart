import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/uihelper.dart';

class CallsScreen extends StatelessWidget {
  CallsScreen({super.key});
  var callContent = [
    {
      "name": "Aron",
      "img":
          "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?semt=ais_hybrid&w=740",
      "calltime": "15min ago"
    },
    {
      "name": "Jennie",
      "img":
          "https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
      "calltime": "1hr ago"
    },
    {
      "name": "Franklin",
      "img":
          "https://plus.unsplash.com/premium_photo-1689530775582-83b8abdb5020?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fHww",
      "calltime": "1d ago"
    },
    {
      "name": "Roger",
      "img":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740",
      "calltime": "8h ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.customText(
                text: "Recent",
                height: 18,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage(callContent[index]["img"].toString()),
                  ),
                  title: Uihelper.customText(
                      text: callContent[index]["name"].toString(),
                      height: 18,
                      color: Colors.black),
                  subtitle: Uihelper.customText(
                      text: callContent[index]["calltime"].toString(),
                      height: 16),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call,
                        color: Color(0xFF00A884),
                      )),
                );
              },
              itemCount: callContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
