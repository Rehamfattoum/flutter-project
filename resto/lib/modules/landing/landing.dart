import 'package:flutter/material.dart';
import 'package:resto/components/custom_button.dart';
import 'package:resto/constant.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: gradientbackground,
              child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Image.asset('assets/images/restaurantlogo.jpg',
                      fit: BoxFit.contain,
                      width:100,
                      height: 100,
                    ),
                    const SizedBox(height: 30),
                    const Text('welcome', style: TextStyle(
                      color: white,
                      fontSize: 60,
                      fontFamily: 'TheNautigal Bold',
                    ),
                    ),
                    const SizedBox(height: 130,),
                    CustomButton(
                      height: 45,
                      width: MediaQuery.of(context).size.width*.9,
                      buttonName: 'sign In',
                      onTap: () {
                        print('Rita');
                      },
                      ),
                    const SizedBox(height: 30),
                    CustomButton(height: 45,
                      width: MediaQuery.of(context).size.width*.9,
                      buttonName: 'sign Up',
                      fontColor: white,
                      ButtonColor: Colors.black,
                      onTap:(){
                      print("Reham");
                      } ,)
                  ])
          )
      ),
    );
  }
}

