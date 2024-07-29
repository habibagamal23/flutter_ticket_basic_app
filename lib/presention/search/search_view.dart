import 'package:flutter/material.dart';
import 'package:ticket_app/presention/search/app_text_icon.dart';
import 'package:ticket_app/presention/search/tickect_promotion.dart';

import '../../../consatnt/app_style.dart';
import '../widget/app_ticket_tabs.dart';
import '../widget/double_text.dart';
import 'find_text.dart';

class  SearchView extends StatelessWidget {
  const  SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("What are\nyou looking for?", style: AppStyle.headline1.copyWith(fontSize: 35),),
          const SizedBox(height: 20,),
          const AppTicketTabs(
            firstTab: "All Tickets",
            secondTab: "Hotels",
          ),
          const SizedBox(height: 25,),
          const AppTextIcon(icon: Icons.flight_takeoff_rounded,text: "Departure",),
          const SizedBox(height: 20,),
          const AppTextIcon(icon: Icons.flight_land_rounded,text: "Arrival",),
          const SizedBox(height: 25,),
          const FindTickets(),
          const SizedBox(height: 40,),
          DoubleText(
           firstText: 'Upcoming Flights',
            secText: 'View all',
            onpressed:  () => Navigator.pushNamed(context,"all_tickets"),
          ),
          const SizedBox(height: 15,),

          const TicketPromotion(),
        ],
      ),
    );
  }
}
