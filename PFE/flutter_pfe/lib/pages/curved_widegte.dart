// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pfe/core/constants.dart';

class CurvedWidget extends StatelessWidget {
  const CurvedWidget({Key? key}) : super(key: key);

  static const PrimaryColor = kMainColor;
  static const secondaryColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(backgroundColor: PrimaryColor),
      ),
      home: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {}, iconSize: 30, icon: Icon(Icons.home)),
            ],

            // to remove the shadow of the bar
            elevation: 0,
          ),
          body: HomeCurvedScreen(
              secondaryColor: secondaryColor, PrimaryColor: PrimaryColor)),
    );
  }
}

class HomeCurvedScreen extends StatelessWidget {
  const HomeCurvedScreen({
    Key? key,
    required this.secondaryColor,
    required this.PrimaryColor,
  }) : super(key: key);

  final Color secondaryColor;
  final Color PrimaryColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                color: secondaryColor,
              ),
              Container(
                // child: Column(

                //   children: const [Text('jfhfhfhfh',textAlign: Center,)],
                // ),
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(88))),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 570,
          child: Stack(
            children: [
              Container(
                color: PrimaryColor,
              ),
              Container(
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(88))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
