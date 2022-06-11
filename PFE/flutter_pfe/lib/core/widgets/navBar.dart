import 'package:flutter/material.dart';

class ButtonNavBar extends StatelessWidget {
  final String photo;
  // final String title;
  final VoidCallback press;

  const ButtonNavBar({
    Key? key,
    required this.photo,
    // required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  photo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Text(
            //   title,
            //   textAlign: TextAlign.center,
            // ),
          ],
        ),
        width: 50,
      ),
    );
  }
}
