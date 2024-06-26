import 'package:adv_flutter_ch2/screens/bottom_navigation_bar/providers/bottom_navigation_provider.dart';
import 'package:adv_flutter_ch2/screens/bottom_navigation_bar/view/bottom_navigation_screen.dart';
import 'package:adv_flutter_ch2/screens/cupertino%20action%20sheet/view/cupertino_action_sheet.dart';
import 'package:adv_flutter_ch2/screens/cupertino%20segmented%20control/providers/segmented_provider.dart';
import 'package:adv_flutter_ch2/screens/cupertino%20segmented%20control/view/segmented_screen.dart';
import 'package:adv_flutter_ch2/screens/cupertino%20tab%20bar/view/cupertino_tab_bar.dart';
import 'package:adv_flutter_ch2/screens/cupertino_slivers/cupertino_custom_scroll.dart';
import 'package:adv_flutter_ch2/screens/cupertino_slivers/cupertino_list_section.dart';
import 'package:adv_flutter_ch2/screens/cupertino_slivers/settings_screen.dart';
import 'package:adv_flutter_ch2/screens/date_picker/android/view/date_picker_screen.dart';
import 'package:adv_flutter_ch2/screens/date_picker/ios/view/date_picker_ios.dart';
import 'package:adv_flutter_ch2/screens/dialog_box/android/providers/android_dialog_provider.dart';
import 'package:adv_flutter_ch2/screens/dialog_box/android/view/dialog_android.dart';
import 'package:adv_flutter_ch2/screens/dialog_box/ios/view/action_sheet.dart';
import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/adaptive/adaptive.dart';
import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/for_android/material_widgets.dart';
import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/for_ios/cupertino_widgets.dart';
import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/providers/switchfrom_m-c_provider.dart';
import 'package:adv_flutter_ch2/screens/material_slivers/view/sliver_screen.dart';
import 'package:adv_flutter_ch2/screens/pageview/view/pageview_screen.dart';
import 'package:adv_flutter_ch2/screens/slider/providers/light_dark_provider.dart';
import 'package:adv_flutter_ch2/screens/slider/views/slider_screen.dart';
import 'package:adv_flutter_ch2/screens/time_picker/android/view/time_picker.dart';
import 'package:adv_flutter_ch2/screens/time_picker/ios/providers/time_picker_ios_provider.dart';
import 'package:adv_flutter_ch2/screens/time_picker/ios/view/time_picker_ios.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AndroidDialogProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => IosTimeProvider(),
        ),
        ChangeNotifierProvider(create: (context) => SwitchProvider()),
        ChangeNotifierProvider(
          create: (context) => BottomProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
                datePickerTheme: DatePickerThemeData(
                    backgroundColor: Color(0xffE5FBDA),
                    dayForegroundColor: MaterialStateProperty.all(Colors.black),
                    yearForegroundColor:
                        MaterialStateProperty.all(Colors.white),
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
        initialRoute: '/materialSlivers',
        routes: {
          '/datePickerAndroid': (context) => DatePickerAndroid(),
          '/timePickerAndroid': (context) => TimePickerAndroid(),
          '/dialogBoxAndroid': (context) => DialogBoxAndroid(),
          '/datePickerIos': (context) => IosDatePicker(),
          '/timePickerIos': (context) => IosTimePicker(),
          '/actionSheet': (context) => ActionSheet(),
          '/materialWidgets': (context) => MaterialWidgets(),
          '/cupertinoWidgets': (context) => CupertinoWidgets(),
          '/adaptive': (context) => AdaptiveMaterialCupertino(),
          '/customScroll': (context) => CustomScroll(),
          '/pageView': (context) => PageViewScreen(),
          '/bottomNavigation': (context) => BottomNavigationScreen(),
          '/materialSlivers': (context) => SliverScreen()
        },
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SegmentedProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LightDarkProvider(),
        )
      ],
      builder: (context, child) => CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(
            brightness:
                Provider.of<LightDarkProvider>(context, listen: true).isDark
                    ? Brightness.dark
                    : Brightness.light),
        initialRoute: '/actionSheet',
        routes: {
          '/': (context) => CustomScroll(),
          '/listSection': (p0) => CupertinoListSectionExample(),
          '/settings': (p0) => Settings(),
          '/tabBar': (p0) => CupertinoTabBarScreen(),
          '/segmented': (p0) => CupertinoSegmentedControlScreen(),
          '/slider': (p0) => SliderScreen(),
          '/actionSheet': (p0) => ActionSheetOpen(),
        },
      ),
    );
  }
}
