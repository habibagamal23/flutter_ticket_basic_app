import 'package:flutter/material.dart';
import 'package:ticket_app/consatnt/app_style.dart';

import 'big_dot.dart';
import 'custom_layout_builder.dart';

class TicketBlue extends StatelessWidget {
  final String firstCountryName;
  final String distance;
  final String secCountryName;
  final String firstCountryLetter;
  final String secCountryLetter;

  const TicketBlue({required this.firstCountryLetter , required this.firstCountryName , required this.distance, required this.secCountryLetter, required this.secCountryName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First line with icon
        Row(
          children: [
            Text(
              firstCountryLetter,
              style: AppStyle.headLineStyle3.copyWith(color: Colors.white),
            ),
            const Spacer(),
            const Bigdot(),
            Expanded(
              child: Stack(
                children: [
                  const SizedBox(
                    height: 24,
                    child: CoustmomLayoutBuilder(randomdivider: 5),
                  ),
                  Center(
                    child: Transform.rotate(
                      angle: 1.57, // 90 degrees in radians
                      child: const Icon(
                        Icons.airplanemode_active_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Bigdot(),
            const Spacer(),
            Text(
             secCountryLetter,
              style: AppStyle.headLineStyle3.copyWith(color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 8), // Add some space between the rows

        // Second line with just text
        Row(
          children: [
            Text(
              firstCountryName,
              style: AppStyle.headLineStyle4.copyWith(color: Colors.white),
            ),
            const Spacer(),
            Text(
              distance,
              style: AppStyle.headLineStyle4.copyWith(color: Colors.white),
            ),
            const Spacer(),
            Text(
             secCountryName,
    textAlign : TextAlign.end,
              style: AppStyle.headLineStyle4.copyWith(color: Colors.white ),

            ),
          ],
        ),
      ],
    );
  }
}
