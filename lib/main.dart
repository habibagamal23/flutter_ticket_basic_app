import 'package:flutter/material.dart';
import 'package:ticket_app/presention/Home/screens/all_hotels.dart';
import 'package:ticket_app/presention/Home/screens/all_tickets.dart';
import 'package:ticket_app/presention/widget/bottomnav.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your applicat ion.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/": (context)=>BottomNav(),
        "all_tickets" : (context)=>AllTickets(),
       "all_hotels" :  (context)=>AllHotels(),
      },
    );
  }
}
