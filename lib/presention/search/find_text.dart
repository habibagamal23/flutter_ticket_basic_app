
import 'package:flutter/material.dart';

import '../../consatnt/app_style.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppStyle.findTicketColor),
      child: Center(
        child: Text(
          "find tickets",
          style: AppStyle.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}