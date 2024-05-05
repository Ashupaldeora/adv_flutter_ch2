import 'package:adv_flutter_ch2/screens/date_picker/android/view/date_picker_screen.dart';
import 'package:adv_flutter_ch2/screens/time_picker/android/view/time_picker.dart';
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
      theme: ThemeData(
              datePickerTheme: DatePickerThemeData(
                  backgroundColor: Color(0xffE5FBDA),
                  dayForegroundColor: MaterialStateProperty.all(Colors.black),
                  yearForegroundColor: MaterialStateProperty.all(Colors.white),
                  todayBorder: BorderSide(
                    color: Color(0xff396927),
                  ),
                  yearStyle: TextStyle(color: Colors.black),
                  weekdayStyle: TextStyle(color: Color(0xff396927))),
              timePickerTheme: TimePickerThemeData(
                  dialHandColor: Color(0xff5f9e45),
                  dayPeriodColor: Colors.lightBlue.withOpacity(0.5)))
          .copyWith(
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.light,
          primarySwatch: Colors.lightGreen,
        ),
      ),
      initialRoute: '/timePickerAndroid',
      routes: {
        '/datePickerAndroid': (context) => DatePickerAndroid(),
        '/timePickerAndroid': (context) => TimePickerAndroid()
      },
    );
  }
}
