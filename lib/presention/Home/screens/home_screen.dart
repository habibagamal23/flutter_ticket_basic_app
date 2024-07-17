import 'package:flutter/material.dart';
import 'package:ticket_app/consatnt/app_style.dart';

import '../../../data/all_json.dart';
import '../../widget/double_text.dart';
import '../../widget/ticket_view/ticket_view.dart';
import '../home_widget/greeting_section.dart';
import '../home_widget/search_section.dart';

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
                DoubleText(firstText: "UpComing", secText: "ViewAll",)
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
                )
              ]
                )
          )
        ],
      ),
    );
  }
}
