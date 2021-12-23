import 'package:flutter/material.dart';
import 'package:flutter_oops/models/user_model.dart';

// ignore: must_be_immutable
class Oops extends StatelessWidget {
  User? user;
  Oops({this.user, Key? key}) : super(key: key);
/* 
  int get age {
    return DateTime.now().year - user!.birthday!.year;
  } */

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
