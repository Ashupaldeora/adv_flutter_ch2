import 'package:flutter/material.dart';

class TimePickerAndroid extends StatelessWidget {
  const TimePickerAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F2E9),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xffF0F2E9),
        centerTitle: true,
        title: Text(
          "Time Picker",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            showTimePicker(context: context, initialTime: TimeOfDay.now());
          },
          child: Text(
            "Pick Time",
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
