import 'package:adv_flutter_ch2/screens/date_picker/android/view/date_picker_screen.dart';
import 'package:adv_flutter_ch2/screens/date_picker/ios/view/date_picker_ios.dart';
import 'package:adv_flutter_ch2/screens/dialog_box/android/providers/android_dialog_provider.dart';
import 'package:adv_flutter_ch2/screens/dialog_box/android/view/dialog_android.dart';
import 'package:adv_flutter_ch2/screens/dialog_box/ios/view/action_sheet.dart';
import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/adaptive/adaptive.dart';
import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/for_android/material_widgets.dart';
import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/for_ios/cupertino_widgets.dart';
import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/providers/switchfrom_m-c_provider.dart';
import 'package:adv_flutter_ch2/screens/time_picker/android/view/time_picker.dart';
import 'package:adv_flutter_ch2/screens/time_picker/ios/providers/time_picker_ios_provider.dart';
import 'package:adv_flutter_ch2/screens/time_picker/ios/view/time_picker_ios.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => AndroidDialogProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => IosTimeProvider(),
      ),
      ChangeNotifierProvider(create: (context) => SwitchProvider())
    ], child: AdaptiveMaterialCupertino());
  }
}
// MaterialApp(
// debugShowCheckedModeBanner: false,
// theme: ThemeData(
// datePickerTheme: DatePickerThemeData(
// backgroundColor: Color(0xffE5FBDA),
// dayForegroundColor: MaterialStateProperty.all(Colors.black),
// yearForegroundColor:
// MaterialStateProperty.all(Colors.white),
// todayBorder: BorderSide(
// color: Color(0xff396927),
// ),
// yearStyle: TextStyle(color: Colors.black),
// weekdayStyle: TextStyle(color: Color(0xff396927))),
// timePickerTheme: TimePickerThemeData(
// dialHandColor: Color(0xff5f9e45),
// dayPeriodColor: Colors.lightBlue.withOpacity(0.5)))
//     .copyWith(
// colorScheme: ColorScheme.fromSwatch(
// brightness: Brightness.light,
// primarySwatch: Colors.lightGreen,
// ),
// ),
// initialRoute: '/cupertinoWidgets',
// routes: {
// '/datePickerAndroid': (context) => DatePickerAndroid(),
// '/timePickerAndroid': (context) => TimePickerAndroid(),
// '/dialogBoxAndroid': (context) => DialogBoxAndroid(),
// '/datePickerIos': (context) => IosDatePicker(),
// '/timePickerIos': (context) => IosTimePicker(),
// '/actionSheet': (context) => ActionSheet(),
// '/materialWidgets': (context) => MaterialWidgets(),
// '/cupertinoWidgets': (context) => CupertinoWidgets(),
// },
// ),
