import 'package:flutter/material.dart';
import 'package:flutter_pfe/core/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, @required this.pageController})
      : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        PageViewItem(
          image: 'photos_pfe/bienvenue image.jpg',
          title: 'AAAAAAAAAA',
          subTitle: 'aaaaaaaaa',
        ),
        // ignore: prefer_const_constructors
        PageViewItem(
          image: 'photos_pfe/doctors.jpg',
          title: 'BBBBBBBBBBBBB',
          subTitle: 'bbbbbbb',
        ),
        // ignore: prefer_const_constructors
        PageViewItem(
          image: 'photos_pfe/bienvenue image.jpg',
          title: 'CCCCCCCCCCCCC',
          subTitle: 'cccccccc',
        ),
      ],
    );
  }
}
