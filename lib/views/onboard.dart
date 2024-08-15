import 'package:flutter/material.dart';
import 'package:store_app/widgets/text.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import '../routes/routes_name.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    Widget firstContainer = Padding(
      padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
      child: Stack(
        children: [
          Positioned(
            top: -12,
            left: 110,
            child: Image.asset(
              'assets/images/Highlight_05.png',
              height: 50,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: header('WELCOME TO', false, false)),
              Center(child: header('NIKE', false, false)),
            ],
          ),
          Positioned(
            top: 100,
            left: (screenWidth - 150) / 2,
            child: Image.asset(
              'assets/images/Vector.png',
              height: 30,
              width: 150,
            ),
          ),
          Positioned(
            top: 180,
            left: 50,
            child: Image.asset('assets/images/Misc_04.png'),
          ),
          Positioned(
            top: 480,
            left: 50,
            child: Image.asset('assets/images/Highlight_10.png'),
          ),
          Positioned(
            top: 460,
            right: 50,
            child: Image.asset('assets/images/Highlight_10.png'),
          ),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: OnBoardingSlider(
          skipIcon: const Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          pageBackgroundColor: const Color.fromARGB(255, 13, 110, 253),
          headerBackgroundColor: const Color.fromARGB(255, 13, 110, 253),
          finishButtonText: 'Next',
          finishButtonStyle: const FinishButtonStyle(
            backgroundColor: Colors.white,
          ),
          finishButtonTextStyle:
              const TextStyle(color: Colors.black, fontSize: 20),
          centerBackground: true,
          background: [
            Image.asset('assets/images/blueshoe.png'),
            Image.asset('assets/images/Spring_prev_ui 1.png'),
            Image.asset('assets/images/Aire Jordan Nike.png'),
          ],
          onFinish: () {
            Navigator.of(context).pushReplacementNamed(AppCharRoute.explorer);
          },
          totalPage: 3,
          speed: 1.8,
          pageBodies: [
            firstContainer,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 400,
                  ),
                  header('Let’s Start Journey', false, false),
                  header('With Nike', false, false),
                  const SizedBox(height: 50),
                  underheader('Smart, Gorgeous & Fashionable'),
                  underheader('Collection Explor Now')
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 400,
                  ),
                  const SizedBox(height: 60),
                  header('You Have the', false, false),
                  header('Power To', false, false),
                  const SizedBox(height: 20),
                  underheader(
                      'There Are Many Beautiful And Attractive Plants To'),
                  underheader('Your Room'),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
