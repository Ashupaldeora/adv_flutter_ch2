import 'package:flutter/material.dart';

class DatePickerAndroid extends StatelessWidget {
  const DatePickerAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Center(),
    );
  }
}
