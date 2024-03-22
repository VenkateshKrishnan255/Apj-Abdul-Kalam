import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../QuotesText/pageviewtext.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();//super
    Timer(
        const Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const PageViewtext())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: content(),
    );
  }
}

Widget content() {
  return Scaffold(
    backgroundColor: Colors.grey,
    body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Colors.grey],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/RiveAssets/men.json'),
          Container(
            child: buildColorizeAnimation(),
          )
          //Lottie.network('https://lottie.host/d3e63f9f-e46e-450f-92f9-24f7f86f6574/kAqza6tOAD.json'),
          //Lottie.asset('assets/RiveAssets/load.json')
        ],
      ),
    ),
  );
}

Widget buildColorizeAnimation() => Center(
      child: AnimatedTextKit(animatedTexts: [
        ColorizeAnimatedText('No Pain No Gain',
            textStyle: colorizeTextStyle, colors: colorizeColors),
      ]),
    );

const colorizeTextStyle =
    TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
const colorizeColors = [
  Colors.blue,
  Colors.orange,
  Colors.pink,
  Colors.red,
  Colors.purple
];

//Lottie.network('https://lottie.host/d3e63f9f-e46e-450f-92f9-24f7f86f6574/kAqza6tOAD.json'),
//Lottie.network('https://lottie.host/1380e62c-bda7-4093-932d-e82bd1dd0f66/caWNtqonVl.json'),
//Lottie.asset('assets/RiveAssets/load.json'),
//Lottie.asset('assets/RiveAssets/lottie.json'),
