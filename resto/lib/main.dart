import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resto/getx-bindings/landing_binding.dart';
import 'package:resto/getx-bindings/login_binding.dart';
import 'package:resto/modules/landing/landing.dart';
import 'modules/register/register.dart';
import 'modules/login/login.dart';

void main() {
  runApp(
      GetMaterialApp(
      initialRoute: 'landing',
      getPages: [
        GetPage (name: '/login', page: ()=> Login() ,binding: LoginBinding()),
        GetPage (name: '/landing', page: ()=> Landing() ,binding: LandingBinding()),
        GetPage (name: '/register', page: ()=> Register()),

      ],
    )
  );
}


