// ignore_for_file: prefer_const_constructors, prefer_collection_literals, non_constant_identifier_names, deprecated_member_use, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_pfe/core/constants.dart';
import 'package:flutter_pfe/pages/onBording/presentation/doctor_screen.dart';

import '../core/widgets/maladieModel.dart';

class EtatGeneralView extends StatefulWidget {
  const EtatGeneralView({Key? key}) : super(key: key);

  @override
  State<EtatGeneralView> createState() => _EtatGeneralViewState();
}

List<MaladieModel> maladies = [
  MaladieModel("Presence de  plaints", false),
  MaladieModel("Fatigue", false),
  MaladieModel("Capacité du travail", false),
  MaladieModel("Activités quotidiennes", false),
  MaladieModel("Autonomie", false),
  MaladieModel("Appétit", false),
  MaladieModel(" Douleur", false),
  MaladieModel("Dépression/Anxiété", false),
];

// ignore: deprecated_member_use

List<MaladieModel> selectedMaladies = [];

class _EtatGeneralViewState extends State<EtatGeneralView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 70,
          title: Text(
            '                 Etat ',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
        body: SafeArea(
          child: Container(
              child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  '     General',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: maladies.length,
                    itemBuilder: (BuildContext context, int index) {
                      return MaladieItem(maladies[index].Maladie,
                          maladies[index].isSelected, index);
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: kMainColor,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              DoctorScreen(selectedMaladies)));
                    },
                    child: Container(
                      height: 35,
                      alignment: Alignment.center,
                      child: Text(
                        "suivant",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
        ));
  }

  Widget MaladieItem(String Maladie, bool isSelected, int index) {
    return Container(
      // margin: EdgeInsets.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 30,
          right: 30,
        ),
        child: ListTile(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Color(0xff707070), width: 1),
              borderRadius: BorderRadius.circular(15)),
          selectedTileColor: Colors.grey[300],
          horizontalTitleGap: 40.0,
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
          // visualDensity: VisualDensity(horizontal: 0, vertical: -4),

          leading: isSelected
              ? Icon(
                  Icons.check_box,
                  color: Color.fromARGB(255, 135, 178, 252),
                )
              : Icon(
                  Icons.indeterminate_check_box_sharp,
                  color: Color(0xffC6D9F9),
                ),

          title: Text(
            Maladie,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
            // textAlign: TextAlign.center,
          ),
          onTap: () {
            setState(() {
              maladies[index].isSelected = !maladies[index].isSelected;
              if (maladies[index].isSelected == true) {
                selectedMaladies.add(MaladieModel(Maladie, true));
              } else if (maladies[index].isSelected == false) {
                selectedMaladies.removeWhere(
                    (element) => element.Maladie == maladies[index].Maladie);
              }
            });

            DoctorScreen(context) => DoctorScreen(selectedMaladies);
          },
        ),
      ),
    );
  }
}
