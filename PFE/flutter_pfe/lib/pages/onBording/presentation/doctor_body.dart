import 'package:flutter/material.dart';
import 'package:flutter_pfe/pages/onBording/presentation/doctor_screen.dart';

import '../../../core/widgets/maladieModel.dart';

class DoctorBody extends StatelessWidget {
  const DoctorBody({Key? key, required this.favoriteProduct}) : super(key: key);
  final List<MaladieModel> favoriteProduct;
  @override
  Widget build(BuildContext context) {
    return DoctorScreen(favoriteProduct);
  }
}
