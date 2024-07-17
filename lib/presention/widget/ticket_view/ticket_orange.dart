import 'package:flutter/material.dart';

import '../../../consatnt/app_style.dart';
import 'big_dot.dart';
import 'custom_layout_builder.dart';

class TicketOrange extends StatelessWidget {
  const TicketOrange({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First line with icon
        Row(
          children: [
            Text(
              "NYC",
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
              "LDN",
              style: AppStyle.headLineStyle3.copyWith(color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 8), // Add some space between the rows

        // Second line with just text
        Row(
          children: [
            Text(
              "New York",
              style: AppStyle.headLineStyle4.copyWith(color: Colors.white),
            ),
            const Spacer(),
            Text(
              "8H 30M",
              style: AppStyle.headLineStyle4.copyWith(color: Colors.white),
            ),
            const Spacer(),
            Text(
              "London",
              style: AppStyle.headLineStyle4.copyWith(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
