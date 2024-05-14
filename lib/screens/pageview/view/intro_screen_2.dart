import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'intro_screen_3.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA3E9F9),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/screen2.png',
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
                    "Fresh Drinks, Stay Fresh",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    width: 280,
                    child: Text(
                      "Not all food, we provide clear healthy drink options for you, Fresh taste always accompanies youGet StartedFresh Drinks, Stay Fresh",
                      textAlign: TextAlign.center,
                      maxLines: 4,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black)),
                          onPressed: () {},
                          child: Text("Skip now")),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => IntroScreen3(),
                          ));
                        },
                        child: Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xffA3E9F9), shape: BoxShape.circle),
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Color(0xffA3E9F9),
                            ),
                          ),
                        ),
                      )
                    ],
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
