import 'package:flutter/material.dart';
import 'package:ticket_app/consatnt/app_style.dart';
import 'package:ticket_app/presention/Home/screens/all_tickets.dart';

import '../../../data/all_json.dart';
import '../../widget/double_text.dart';
import '../../widget/ticket_view/ticket_view.dart';
import '../home_widget/greeting_section.dart';
import '../home_widget/hotel_widget.dart';
import '../home_widget/search_section.dart';
import 'all_hotels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
              padding: const EdgeInsets.all(20),
              child:  Column(children: [
             const   GreetingSection(),
               const  SizedBox(height: 20),
              const  SearchSection(),
                const  SizedBox(height: 20),
                DoubleText(
                  firstText: "UpComing", secText: "ViewAll",
                  onpressed:  (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context)=>AllTickets()));
                    }
                )
                ,
                const  SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                  children:
                   ticketList.take(2).map(
                           (singleticket)=>TicketView(ticket: singleticket)


                ).toList()
                    ),
                ),

                DoubleText(
                    firstText: "Hotels", secText: "ViewAll",
                    onpressed:  (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context)=>AllHotels()));
                    }
                ),
                const  SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children:
                      hotelList.take(2).map(
                              (hotel)=>HotelWidget(hotels: hotel)


                      ).toList()
                  ),
                ),

              ]
                )
          )
        ],
      ),
    );
  }
}
