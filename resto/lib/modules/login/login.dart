import 'package:flutter/material.dart';
import 'package:resto/components/custom_button.dart';
import 'package:resto/components/custom_textfield.dart';
import 'package:resto/modules/login/login_controller.dart';
import 'package:get/get.dart';

import '../../constant.dart';
class Login extends StatelessWidget {
  LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: gradientbackground,
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/restaurantlogo.jpg',
              fit: BoxFit.contain,
              width: 75,
              height: 75,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width *0.25 ,
                child: Divider (
                  color: white ,
                  thickness: 2,
                ),),
                Text('Sign in with',
                style: TextStyle(
                  color: white ,
                  fontFamily: 'TheNautigal-Regular',
                  fontSize: 28,
                ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width *0.25,
                  child: Divider (
                    color: white ,
                    thickness: 2,
                  ),),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: [
                ImageIcon(
                  AssetImage(
                    'assets/images/twittericon.png'
                  ),
                  color: Colors.black ,
                  size: 40 ,
                ),
                  ],
                ),
            SizedBox(
              height: 20 ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Text('OR') ,]
      ),
            SizedBox(
                height: 20 ),
            Column (
              children: [
                CustomTextField (
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.95 ,
                  hintText: 'User Name',
                  onChange: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 20 ,
                ),
                CustomTextField (
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.95 ,
                  hintText: 'Password',
                  onChange: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 20 ,
                ),

                CustomButton (
                  width: MediaQuery.of(context).size.width *0.90 ,
                  height: 60,
                  buttonName: 'sign in',
                  onTap: (){},
                )
            ])
              ],
            )
        ),
      ),
    );
  }
}
