// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:flutter_pfe/pages/home.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../../core/widgets/maladieModel.dart';
import '../../../core/widgets/navBar.dart';

class DoctorScreen extends StatelessWidget {
  final List<MaladieModel> selectedMaladies;
  const DoctorScreen(this.selectedMaladies);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        title: Text(
          '     Connecter avec',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        // centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(88),
                  topRight: Radius.circular(88)),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 79, 142, 205),
                Color.fromARGB(255, 0, 94, 255),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        height: 60,
        margin: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ButtonNavBar(
              // title: 'Docteur',
              photo: 'photos_pfe/doctor1.png',
              press: () {},
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
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '                     Votre docteur!',
              // style: TextStyle(fontSize: 24),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                'Votre symptoms:\n ${selectedMaladies}',
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton.icon(
              icon: Icon(
                Icons.map,
                color: Color(0xFF4B55DE),
              ),
              label: Text(
                'Rendez-vous',
                style: TextStyle(color: Colors.blue),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.white,
                minimumSize: Size.fromHeight(50),
                side: BorderSide(color: Color(0xff52B1FA), width: 0.5),
              ),
              onPressed: () async {
                final url = '';
                if (await canLaunchUrlString(url)) {
                  await launchUrlString(url);
                }
              },
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              icon: Icon(
                Icons.phone,
                color: Color(0xFF4B55DE),
              ),
              label: Text(' appel', style: TextStyle(color: Colors.blue)),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.white,
                minimumSize: Size.fromHeight(50),
                side: BorderSide(color: Color(0xff52B1FA), width: 0.5),
              ),
              onPressed: () async {
                final phoneNumber = '88898987';
                final url = 'tel:$phoneNumber';
                if (await canLaunchUrlString(url)) {
                  await launchUrlString(url);
                }
              },
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              icon: Icon(
                Icons.mail,
                color: Color(0xFF4B55DE),
              ),
              label:
                  Text('Envoi un Email', style: TextStyle(color: Colors.blue)),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.white,
                minimumSize: Size.fromHeight(50),
                side: BorderSide(color: Color(0xff52B1FA), width: 0.5),
              ),
              onPressed: () async {
                final toEmail = 'doctor@gmail.com';
                // final subject ='';
                // final message =;
                final url = 'mailto:$toEmail';

                if (await canLaunchUrlString(url)) {
                  await launchUrlString(url);
                }
              },
            ),
          ],
        ),
      ]),
    );

    ;
    // ignore: dead_code
  }
}
