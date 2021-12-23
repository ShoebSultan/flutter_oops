// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_oops/models/user_model.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  User? user;
  HomePage({this.user, Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? birthDayString;
  String initValue = "select your birthday";
  bool isDateSelected = false;
  //final newUser = User(name: "shoeb sultan", birthday: DateTime(1999, 12, 28));
  late DateTime? birthday3 = widget.user!.birthday;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Oops'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: const Icon(Icons.calendar_today),
              onTap: () async {
                final datePick = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100));

                var birthday2 = birthday3;
                if (datePick != null && datePick != birthday2) {
                  setState(() {
                    birthday2 = datePick;
                    isDateSelected = true;
                    birthDayString =
                        "${birthday2!.month}/${birthday2!.day}/${birthday2!.year}";
                  });
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Text(isDateSelected ? birthday3.toString() : initValue),
          ],
        ),
      ),
    );
  }
}
