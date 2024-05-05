import 'package:adv_flutter_ch2/screens/date_picker/android/view/date_picker_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/datePickerAndroid',
      routes: {'/datePickerAndroid': (context) => DatePickerAndroid()},
    );
  }
}
