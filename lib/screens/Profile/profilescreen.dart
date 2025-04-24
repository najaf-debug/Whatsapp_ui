// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/uihelper.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();

  File? pickedimage;
  // using file because our image comes in JPEG and PNG formatts which is file formatte
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Uihelper.customText(
                text: "Profile info",
                height: 20,
                color: Color(0xFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(
              height: 40,
            ),
            Uihelper.customText(
                text: "Please provide your name and an optional", height: 14),
            Uihelper.customText(text: "profile photo", height: 14),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child: pickedimage == null
                  ? CircleAvatar(
                      radius: 80,
                      backgroundColor: Color(0xFFD9D9D9),
                      child: Image.asset(
                        "assets/images/camera.png",
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    )
                  : CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(pickedimage!),
                    ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Type your name here",
                      hintStyle: TextStyle(
                        color: Color(0xFF5E5E5E),
                      ),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF00A884))),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF00A884))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF00A884))),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/emoji.png")
              ],
            )
          ],
        ),
      ),
      floatingActionButton:
          Uihelper.customButton(callback: () {}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

// creating bottom sheet for enabling camera and gallery options
  _openBottom(BuildContext context) {
    //created function named _openBottom that is private function
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          _pickImage(ImageSource.camera);
                        },
                        icon: Icon(
                          Icons.camera_alt,
                          size: 80,
                          color: Color(0xFF00A884),
                        )),
                    IconButton(
                        onPressed: () {
                          _pickImage(ImageSource.gallery);
                        },
                        icon: Icon(
                          Icons.image,
                          size: 80,
                          color: Color(0xFF00A884),
                        ))
                  ],
                )
              ],
            ),
          );
        });
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedimage = tempImage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(ex.toString()),
        backgroundColor: Color(0xFF00A884),
      ));
    }
  }
}
