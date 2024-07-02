import 'package:flutter/material.dart';
import 'package:ticket_app/consatnt/app_style.dart';

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
              child: const Column(children: [
                GreetingSection(),
                SizedBox(height: 20),
                SearchSection()
              ]))
        ],
      ),
    );
  }
}
