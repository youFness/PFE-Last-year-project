// ignore_for_file: prefer_const_constructors, avoid_print, must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_pfe/core/constants.dart';
import 'package:flutter_pfe/core/widgets/navBar.dart';
import 'package:flutter_pfe/pages/home.dart';
import 'package:flutter_pfe/pages/onBording/presentation/doctor_body.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Constipation extends StatelessWidget {
  File? image;

  Future pickImage() async {
    // the try and catch if the user tapped the DONT ALLOW TO ACCESS GALLERY
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
      // ignore: nullable_type_in_catch_clause, empty_catches
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Constipation'),
          // backgroundColor: Color.fromARGB(255, 101, 108, 215),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: 60,
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ButtonNavBar(
                // title: 'Docteur',
                photo: 'photos_pfe/doctor1.png',
                press: () {
                  Get.to(() => DoctorBody(
                        favoriteProduct: [],
                      ));
                },
              ),
              ButtonNavBar(
                // title: 'Tips',
                photo: 'photos_pfe/tips2.png',
                press: () {},
              ),
              ButtonNavBar(
                // title: 'history',
                photo: 'photos_pfe/history.png',
                press: () {},
              ),
              ButtonNavBar(
                // title: 'Maps',
                photo: 'photos_pfe/hospital5.png',
                press: () {},
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xFF4B55DE),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => HomeScreen());
          },
          child: Icon(Icons.home),
          backgroundColor: Color(0xFF4B55DE),
        ),
        body: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Form(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  image != null
                      ? Image.file(
                          image!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        )
                      : Container(
                          padding: EdgeInsets.only(left: 235, top: 60),
                          child: SizedBox(
                            width: 62,
                            height: 45,
                            child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(kMainColor)),
                              onPressed: () => pickImage(),
                              // pour changer l icon par la photo qui est deja pris

                              icon: Icon(
                                Icons.camera_alt_outlined,
                                size: 25,
                              ),
                              label: Text(''),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Fréquence d’élimination des selles',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        return "enter correctly";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    // after the tap on the label the numbers keybord appears
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Durée d’évolution",
                        labelStyle: TextStyle(color: Colors.white)),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[0-9]+$').hasMatch(value)) {
                        return "enter correctly";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Signes associés',
                      labelStyle: TextStyle(color: Colors.white),
                      suffix: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        return "enter correctly";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'symptom',
                      labelStyle: TextStyle(color: Colors.white),
                      suffix: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        return "enter correctly";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    width: 170,
                    height: 40,
                    child: ElevatedButton(
                      child: Text('envoyer!'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )));
  }

  void setState(File Function() param0) {}
}
