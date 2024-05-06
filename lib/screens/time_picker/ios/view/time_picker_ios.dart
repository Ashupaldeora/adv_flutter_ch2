import 'package:adv_flutter_ch2/screens/time_picker/ios/providers/time_picker_ios_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IosTimePicker extends StatelessWidget {
  const IosTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Time Picker Ios",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            (Provider.of<IosTimeProvider>(context, listen: true).timeIos ==
                    null)
                ? "0:0:0"
                : '${Provider.of<IosTimeProvider>(context, listen: true).timeIos.toString().split('.').first.padLeft(8, "0")}',
            style: TextStyle(fontSize: 30),
          ),
          CupertinoTimerPicker(
            onTimerDurationChanged: (value) {
              Provider.of<IosTimeProvider>(context, listen: false)
                  .updateTime(value);
            },
          ),
        ],
      ),
    );
  }
}
