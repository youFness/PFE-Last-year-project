// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pfe/core/constants.dart';
import 'package:flutter_pfe/pages/home.dart';

import 'package:flutter_pfe/pages/login_view.dart';

import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);
  // we added the state bcs we want animation
  @override
  State<SplashView> createState() => _SplashViewState();
}

// SingleTicket... cause its just one animation controller
class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  // ? : switch the object from non nullable to nullable it means it can contains a null value
  AnimationController? animationController;
  // we added the double so the widget fadeTransition would accept it
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    // .2 is 2/10
    // ! cus it doenst accept a null value
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    // ? : check if its null or nah
    // animationController is sure not null bcs of !
    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kMainColor,
        body: SizedBox(
            child: Column(children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 120,
              ),
            ],
          ),
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text(
              "BienVenue",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 51,
                  color: const Color(0x00ffffffff)),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Image.asset(
            "photos_pfe/bienvenue image.jpg",
            width: 288,
          ),
        ])));
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => LoginView()
          // , transition: Transition.fade
          );
    });
  }
}
