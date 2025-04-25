import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Home/Calls/callsscreen.dart';
import 'package:flutter_app/screens/Home/Camera/camerascreen.dart';
import 'package:flutter_app/screens/Home/Chats/chatsscreen.dart';
import 'package:flutter_app/screens/Home/Status/statusscreen.dart';
import 'package:flutter_app/widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ],
            indicatorColor: Colors.white,
          ),
          title: Uihelper.customText(
              text: "WhatsApp", height: 20, color: Colors.white),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/Search.png")),
            )
          ],
        ),
        body: TabBarView(children: [
          CameraScreen(),
          chatsScreen(),
          StatusScreen(),
          CallsScreen()
        ]),
      ),
    );
  }
}
