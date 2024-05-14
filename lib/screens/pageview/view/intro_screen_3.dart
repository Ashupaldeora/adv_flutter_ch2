import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff32B67A),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/pixelcut-export (2).png',
                  fit: BoxFit.cover,
                )),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(110))),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Let's Cooking",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    width: 280,
                    child: Text(
                      "Are you ready to make a dish for your friends or family? create an account and cooks",
                      textAlign: TextAlign.center,
                      maxLines: 4,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Provider.of<IntroProvider>(context, listen: false)
                      //     .setvalues();
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => ChangeThemeScreen(),
                      // ));
                    },
                    child: Container(
                        height: 70,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff32B67A)),
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
