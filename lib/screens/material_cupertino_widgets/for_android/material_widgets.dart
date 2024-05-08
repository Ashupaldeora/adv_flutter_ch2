import 'package:adv_flutter_ch2/screens/material_cupertino_widgets/providers/switchfrom_m-c_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MaterialWidgets extends StatelessWidget {
  const MaterialWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          "Material Widgets",
        ),
        centerTitle: true,
        actions: [
          Switch(
            value:
                Provider.of<SwitchProvider>(context, listen: true).isCupertino,
            inactiveThumbColor: Colors.deepOrangeAccent,
            inactiveTrackColor: Colors.deepOrangeAccent.withOpacity(0.3),
            onChanged: (value) {
              Provider.of<SwitchProvider>(context, listen: false)
                  .changeLibrary(value);
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Center(
                      child: Text(
                        "This is material bottom sheet",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  );
                },
                child: Text(
                  "Open Bottom Sheet",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrangeAccent,
                  ),
                )),
            CircularProgressIndicator(
              color: Colors.deepOrangeAccent,
            ),
            TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Material"),
                      content: Text(
                          "This is a Alert Dialog Box comes from material library"),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              "okay",
                              style: TextStyle(
                                color: Colors.deepOrangeAccent,
                              ),
                            ))
                      ],
                    ),
                  );
                },
                child: Text(
                  "Open Alert Dialog",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrangeAccent,
                  ),
                )),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Material Elevated Button",
                  style: TextStyle(color: Colors.deepOrangeAccent),
                )),
            TextButton(
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
                  color: Colors.deepOrangeAccent,
                  fontSize: 23,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Colors.deepOrangeAccent,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                showTimePicker(context: context, initialTime: TimeOfDay.now());
              },
              child: Text(
                "Pick Time",
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 23,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Colors.deepOrangeAccent,
                ),
              ),
            ),
            ListTile(
              trailing: Icon(
                Icons.flutter_dash,
                color: Colors.deepOrangeAccent,
                size: 40,
              ),
              leading: Icon(
                Icons.android,
                color: Colors.deepOrangeAccent,
                size: 40,
              ),
              title: Text(
                "Material",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              subtitle: Text(
                "ListTile",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
