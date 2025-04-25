import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/uihelper.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});
  var contactContent = [
    {
      "img":
          "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?semt=ais_hybrid&w=740",
      "name": "Aron",
      "activitystatus": "Busy",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
      "name": "Jennie",
      "activitystatus": "At gym",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1689530775582-83b8abdb5020?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fHww",
      "name": "Franklin",
      "activitystatus": "In a meeting",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740",
      "name": "Roger",
      "activitystatus": "Winters are coming",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Uihelper.customText(
            text: "Select Contact", height: 20, color: Colors.white),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
        ],
      ),
      body: Expanded(
        child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(contactContent[index]["img"].toString()),
                ),
                title: Uihelper.customText(
                    text: contactContent[index]["name"].toString(),
                    height: 16,
                    fontweight: FontWeight.bold),
                subtitle: Uihelper.customText(
                    text: contactContent[index]["activitystatus"].toString(),
                    height: 14),
              );
            },
            itemCount: contactContent.length),
      ),
    );
  }
}
