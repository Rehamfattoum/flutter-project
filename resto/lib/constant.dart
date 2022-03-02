import 'package:flutter/cupertino.dart';

const Color firstbackcolor = Color(0xff4251a7);
const Color secondbackcolor = Color(0xff626fbd);
const Color thirdbackcolor = Color(0xffa9b5fc);
const Color white = Color(0xffffffff);

const BoxDecoration gradientbackground = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        firstbackcolor,
        secondbackcolor,
        thirdbackcolor
      ]

  ),
);