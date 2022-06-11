// ignore: duplicate_ignore
// ignore: camel_case_types
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_pfe/core/constants.dart';

class categoryToxicite extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback press;
  final double Height;
  final double Width;
  const categoryToxicite({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
    required this.Height,
    required this.Width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: press,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      height: Height,
      width: Width,
      color: kMainColor,
    );
  }
}
