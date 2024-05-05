import 'package:flutter/material.dart';

class DatePickerAndroid extends StatelessWidget {
  const DatePickerAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F2E9),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xffF0F2E9),
        centerTitle: true,
        title: Text(
          "Date Picker",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            showDatePicker(
                context: context,
                firstDate: DateTime(1924),
                lastDate: DateTime(2025),
                initialDate: DateTime.now());
          },
          child: Text(
            "Pick Date",
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
