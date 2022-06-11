// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pfe/core/widgets/categorie.dart';
import 'package:flutter_pfe/core/widgets/navBar.dart';
import 'package:flutter_pfe/pages/Constipation.dart';
import 'package:flutter_pfe/pages/home.dart';
import 'package:get/get.dart';

import 'onBording/presentation/doctor_body.dart';

class Digestive extends StatelessWidget {
  const Digestive({Key? key}) : super(key: key);

  get kMainColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('hdhdhdhdh'),
        // ),
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
        body: Stack(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Text(
                'Toxicité \n            Digestive!',
                // style: TextStyle(fontSize: 24),
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
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
                        // ignore: prefer_const_literals_to_create_immutables
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
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        categoryToxicite(
                            title: "Diarrhées",
                            image: "photos_pfe/Diarrhées.jpg",
                            press: () {},
                            Height: 90,
                            Width: 70),
                        SizedBox(
                          height: 30,
                        ),
                        categoryToxicite(
                            title: "Constipation",
                            image: "photos_pfe/constipation.jpg",
                            press: () {
                              Get.to(() => Constipation());
                            },
                            Height: 80,
                            Width: 100),
                        SizedBox(
                          height: 30,
                        ),
                        categoryToxicite(
                            title: " Mucite",
                            image: "photos_pfe/Mucite2.jpg",
                            press: () {},
                            Height: 110,
                            Width: 70),
                        Spacer(),
                      ],
                    ),
                    Row(
                      children: [
                        Spacer(),
                        categoryToxicite(
                            title: "Vomissements",
                            image: "photos_pfe/vomissement.jpg",
                            press: () {},
                            Height: 110,
                            Width: 90),
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
