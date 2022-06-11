// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

abstract class AuthRepo {
  Future Login({
    @required String Username,
    @required String Password,
  });
}
