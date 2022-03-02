import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant.dart';

class CustomTextField extends StatelessWidget {
  late final double width, height ;
  late final String hintText ;
  late final TextInputType ? keyboard ;
  final Function (String) onChange ;

  CustomTextField({
    required this.width,
    required this.height,
    required this.hintText,
    required this.onChange,
      this.keyboard ,
});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width ,
      height: height,
      decoration: BoxDecoration(
          color: white.withAlpha(20),
          border: Border(
            top: BorderSide(width: 2 , color:white.withAlpha(30)),
            bottom: BorderSide(width: 2 , color:white.withAlpha(30)),
            left: BorderSide(width: 2 , color:white.withAlpha(30)),
            right: BorderSide(width: 2 , color:white.withAlpha(30)),
          )
      ),
      child: Center(
        child: TextField(
          onChanged: onChange ,
          cursorColor: white,
          keyboardType: keyboard ?? TextInputType.text,
          style: TextStyle(
              color: white ,
              fontSize: 20 ,
              fontFamily:  'TheNautigal Bold'
          ),
          decoration: InputDecoration(
            border: InputBorder.none ,
            hintText: hintText ,
            hintStyle: TextStyle(
                color: white ,
                fontSize: 20 ,
                fontFamily:  'TheNautigal Bold'
            ),
            contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8) ,
          ),
        ),
      ),
    );
  }
}
