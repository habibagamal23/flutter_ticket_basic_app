

import 'package:flutter/material.dart';

import '../../../consatnt/app_media.dart';
import '../../../consatnt/app_style.dart';

class GreetingSection extends StatelessWidget {
  const GreetingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning", style: AppStyle.headLineStyle3),
            const SizedBox(height: 5),
            Text("Book Tickets", style: AppStyle.headline1),
          ],
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(image: AssetImage(AppMedia.logo)),
          ),
        ),
      ],
    );
  }
}
