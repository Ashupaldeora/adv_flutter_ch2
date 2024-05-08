import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/for_android/material_widgets.dart';
import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/for_ios/cupertino_widgets.dart';
import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/providers/switchfrom_m-c_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdaptiveMaterialCupertino extends StatelessWidget {
  const AdaptiveMaterialCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    if (Provider.of<SwitchProvider>(context, listen: true).isCupertino) {
      return CupertinoApp(
          debugShowCheckedModeBanner: false, home: CupertinoWidgets());
    } else {
      return MaterialApp(
          debugShowCheckedModeBanner: false, home: MaterialWidgets());
    }
  }
}
