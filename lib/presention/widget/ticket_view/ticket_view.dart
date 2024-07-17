import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/presention/widget/ticket_view/ticket_blue.dart';

import '../../../consatnt/app_style.dart';
import 'container_with_line.dart';
import 'ticket_orange.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 199,
      child: Column(
        children: [
          // Blue Ticket Part
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppStyle.ticketBlue,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
            ),
            child: const TicketBlue(firstCountryLetter: 'NYC',
              firstCountryName: 'New-York', distance: '80:30 M',
              secCountryLetter: 'LDN', secCountryName: 'Londen',),
          ),

          // Container with Line Part
          Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: AppStyle.ticketOrange,
            ),
            child: const ContainerWithLine(),
          ),

          // Orange Ticket Part
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppStyle.ticketOrange,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21),
              ),
            ),
            child: const TicketOrange(),
          ),
        ],
      ),
    );
  }
}
