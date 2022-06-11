// ignore_for_file: file_names, prefer_const_constructors
library flutter_onboarding;

import 'package:flutter/material.dart';
import 'package:flutter_pfe/pages/onBording/presentation/onBoarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
