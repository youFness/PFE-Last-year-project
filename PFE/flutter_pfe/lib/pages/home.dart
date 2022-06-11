// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_pfe/core/constants.dart';
import 'package:flutter_pfe/core/widgets/categorie.dart';
import 'package:flutter_pfe/pages/digestive.dart';
import 'package:flutter_pfe/pages/onBording/presentation/doctor_body.dart';
import 'package:get/get.dart';

import '../core/widgets/navBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: kMainColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.home),
          backgroundColor: Color(0xFF4B55DE),
        ),
        body: Stack(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Salut \n         username!',
                // style: TextStyle(fontSize: 24),
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.white),
              ),
              SizedBox(
                height: 35,
              ),
              SafeArea(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF000000),
                            blurRadius: 16,
                            offset: Offset(0, 8), // Shadow position
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          icon: Icon(Icons.search),
                          // border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    categoryToxicite(
                        title: "Gonadique",
                        image: "photos_pfe/gonadique.jpg",
                        press: () {},
                        Height: 69,
                        Width: 110),
                    Row(
                      children: [
                        Spacer(),
                        categoryToxicite(
                            title: "Fièvre",
                            image: "photos_pfe/fiever.png",
                            press: () {},
                            Height: 95,
                            Width: 75),
                        categoryToxicite(
                            title: "Oculaire",
                            image: "photos_pfe/Toxicité Oculaire.png",
                            press: () {},
                            Height: 100,
                            Width: 75),
                        categoryToxicite(
                            title: " Cutanée",
                            image: "photos_pfe/utanée.jpg",
                            press: () {},
                            Height: 95,
                            Width: 75),
                        Spacer(),
                      ],
                    ),
                    Row(
                      children: [
                        Spacer(),
                        categoryToxicite(
                            title: "Arthro",
                            image: "photos_pfe/utanée.jpg",
                            press: () {},
                            Height: 95,
                            Width: 75),
                        categoryToxicite(
                            title: "Neurologique",
                            image: "photos_pfe/Neuropathie périphérique.png",
                            press: () {},
                            Height: 95,
                            Width: 90),
                        categoryToxicite(
                            title: "Digestive",
                            image: "photos_pfe/digestive.jpg",
                            press: () {
                              Get.to(() => Digestive());
                            },
                            Height: 95,
                            Width: 75),
                        Spacer(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ]));
  }
}
