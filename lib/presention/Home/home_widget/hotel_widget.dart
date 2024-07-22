import 'package:flutter/material.dart';

import '../../../consatnt/app_media.dart';
import '../../../consatnt/app_style.dart';  // Corrected the import statement

class HotelWidget extends StatelessWidget {
  final Map<String, dynamic> hotels;
  const HotelWidget({super.key, required this.hotels});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 16),
      width: size.width * 0.6,  // Corrected to size.width
      decoration: BoxDecoration(
        color: AppStyle.primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,  
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("${AppMedia.baseImage}/${hotels["image"]}"),
                fit: BoxFit.fill,  // Ensuring the image fits properly
              ),
              borderRadius: BorderRadius.circular(16) // Added border radius to match the container
            ),
          ),
          Text(
            hotels["place"],
            style: AppStyle.headLineStyle2.copyWith(color: Colors.grey),
          ),
          SizedBox(height: 4),  // Added spacing between text widgets
          Text(
            hotels["destination"],
            style: AppStyle.headLineStyle2.copyWith(color: Colors.black26),
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
