import 'package:adv_flutter_ch2/screens/pageview/models/screens_model.dart';
import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        screens[0].screens,
        screens[1].screens,
        screens[2].screens,
      ],
    );
  }
}
