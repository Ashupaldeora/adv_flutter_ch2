import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'intro_screen_2.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE34C),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/screen1.png',
                  fit: BoxFit.cover,
                )),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(110))),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Hmm, Healthy Food",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    width: 280,
                    child: Text(
                      "A variety of foods made by the best chef, Ingredients are easy to find, all delicious flavors can only be found at cookbunda",
                      textAlign: TextAlign.center,
                      maxLines: 4,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          style: const ButtonStyle(
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black)),
                          onPressed: () {},
                          child: const Text("Skip now")),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const IntroScreen2(),
                          ));
                        },
                        child: Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Colors.amberAccent,
                              shape: BoxShape.circle),
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.amberAccent,
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
