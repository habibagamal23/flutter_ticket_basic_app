

import 'package:flutter/material.dart';
import 'package:ticket_app/consatnt/app_style.dart';

class DoubleText extends StatelessWidget {

  DoubleText({super.key , required this.firstText , required  this.secText});
  final  String firstText;
  final  String secText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText, style: AppStyle.headLineStyle2, ),
        Text(secText, style :AppStyle.textStyle.copyWith(color: AppStyle.primaryColor))
      ],
    );
  }
}
