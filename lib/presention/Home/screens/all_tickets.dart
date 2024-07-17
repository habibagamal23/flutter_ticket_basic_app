


import 'package:flutter/material.dart';
import 'package:ticket_app/data/all_json.dart';
import 'package:ticket_app/presention/widget/ticket_view/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Tickets"),

      ),
      body: ListView(
        children:[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList.map((singleticket)=>Container(
                  margin: const  EdgeInsets.only(bottom: 20),
                  child: TicketView(ticket: singleticket))
              ).toList()
            ),
          ),
        ]
      ),
    );
  }
}
