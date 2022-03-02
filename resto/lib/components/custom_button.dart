import 'package:flutter/material.dart';

import '../constant.dart';

  class CustomButton extends StatelessWidget {
  final double height, width;

  final double ? fontSize;

  final String buttonName;

  final Color ? ButtonColor, fontColor;

  final Function() onTap;

  CustomButton ({
    required this.height ,
    required this.width ,
    required this.buttonName ,
    required this.onTap ,
    this.fontSize,
    this.fontColor,
    this.ButtonColor
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: height ,
        width: width ,
        decoration:  BoxDecoration (
          color: ButtonColor ?? white,
          borderRadius: BorderRadius.circular(50),
        ),
        child:  Center(
          child: Text(buttonName,style: TextStyle(
            color:fontColor ?? Colors.black ,
            fontSize: fontSize ?? 35 ,
            fontFamily:'TheNautigal Bold',
          ),
          ),
        ),
      ),
    );
  }
}
