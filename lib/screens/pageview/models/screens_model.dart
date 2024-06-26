import 'package:adv_flutter_ch2/screens/pageview/view/intro_screen_1.dart';
import 'package:adv_flutter_ch2/screens/pageview/view/intro_screen_3.dart';
import 'package:flutter/cupertino.dart';

import '../view/intro_screen_2.dart';

class IntroPageViewModel {
  final Widget screens;

  IntroPageViewModel({required this.screens});
}

List<IntroPageViewModel> screens = [
  IntroPageViewModel(screens: IntroScreen1()),
  IntroPageViewModel(screens: IntroScreen2()),
  IntroPageViewModel(screens: IntroScreen3()),
];
