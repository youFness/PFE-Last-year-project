// ignore_for_file: prefer_const_constructors

import 'package:flutter_pfe/core/constants.dart';
import 'package:flutter_pfe/pages/Etat_General.dart';
import 'package:flutter_pfe/pages/home.dart';

import 'package:get/get.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        SizedBox(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "photos_pfe/doctors.jpg",
                    width: 288,
                  ),
                  Text(
                    "Sidentifier",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 198, 202, 255),
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: const Color(0xFF4B55DE),
                          ),
                          hintText: "Nom d'utilisateur :",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 198, 202, 255),
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          suffix: Icon(
                            Icons.visibility,
                            color: const Color(0xFF4B55DE),
                          ),
                          icon: Icon(
                            Icons.lock,
                            color: const Color(0xFF4B55DE),
                            size: 19,
                          ),
                          hintText: "Mot de passe :",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "sidentifier",
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                      ),

                      // i downloaded the neurophi package before working with it
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: NeumorphicButton(
                          margin: EdgeInsets.only(top: 5),
                          onPressed: () {
                            Get.to(() => HomeScreen());
                          },
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.circle(),
                            depth: 0.8,
                            intensity: 10.8,
                            color: kMainColor,
                          ),
                          child:
                              NeumorphicIcon(Icons.arrow_circle_right_outlined),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => EtatGeneralView());
                    },
                    child: Text(
                      "Etat General",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ])),
    );
  }
}
