import 'package:adv_flutter_ch2/screens/dialog_box/android/providers/android_dialog_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DialogBoxAndroid extends StatelessWidget {
  const DialogBoxAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4E7E6),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xffF4E7E6),
        centerTitle: true,
        title: Text(
          "Dialog Box",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Color(0xffffdede),
                title: Text("Phone Ringtone"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.pinkAccent),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('ok',
                          style: TextStyle(color: Colors.pinkAccent)))
                ],
                content: Container(
                  height: 220,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 1))),
                  child: Column(
                    children: [
                      Divider(),
                      SizedBox(
                        height: 200,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              RadioListTile<String>(
                                title: const Text('None'),
                                value: 'None',
                                groupValue: Provider.of<AndroidDialogProvider>(
                                        context,
                                        listen: true)
                                    .selected,
                                onChanged: (value) {
                                  Provider.of<AndroidDialogProvider>(context,
                                          listen: false)
                                      .changeSelection(value!);
                                },
                              ),
                              RadioListTile<String>(
                                title: const Text('Callisto'),
                                value: 'Callisto',
                                groupValue: Provider.of<AndroidDialogProvider>(
                                        context,
                                        listen: true)
                                    .selected,
                                onChanged: (value) {
                                  Provider.of<AndroidDialogProvider>(context,
                                          listen: false)
                                      .changeSelection(value!);
                                },
                              ),
                              RadioListTile<String>(
                                title: const Text('Ganymede'),
                                value: 'Ganymede',
                                groupValue: Provider.of<AndroidDialogProvider>(
                                        context,
                                        listen: true)
                                    .selected,
                                onChanged: (value) {
                                  Provider.of<AndroidDialogProvider>(context,
                                          listen: false)
                                      .changeSelection(value!);
                                },
                              ),
                              RadioListTile<String>(
                                title: const Text('Luna'),
                                value: 'Luna',
                                groupValue: Provider.of<AndroidDialogProvider>(
                                        context,
                                        listen: true)
                                    .selected,
                                onChanged: (value) {
                                  Provider.of<AndroidDialogProvider>(context,
                                          listen: false)
                                      .changeSelection(value!);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          child: Text(
            "Show Dialog",
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 23,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: Colors.pinkAccent,
            ),
          ),
        ),
      ),
    );
  }
}

String? hi;
