

import 'package:flutter/material.dart';
import 'package:ticket_app/consatnt/app_style.dart';

class DoubleText extends StatelessWidget {

  DoubleText({super.key , required this.firstText , required  this.secText , required this.onpressed});
  final  String firstText;
  final  String secText;
  final void Function()?  onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText, style: AppStyle.headLineStyle2, ),
        InkWell(
            onTap: onpressed
            ,
            child:
            Text(secText, style :AppStyle.textStyle.copyWith(color: AppStyle.primaryColor)))
      ],
    );
  }
}
