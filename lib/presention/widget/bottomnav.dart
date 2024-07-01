import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../screens/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {


  final appScreens = [
    const HomeScreen(),
    Text("Search"),
    Text("Ticket")
  ];
  int selectedIndex =0 ;

  void _onTapNav(int index){
 setState(() {
   selectedIndex=index;
 });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
      showUnselectedLabels: false,
        currentIndex:selectedIndex,
        onTap: _onTapNav,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_home_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),

              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_search_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),

              label: "search"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_ticket_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),

              label: "Ticket"),
        ],
      ),
    );
  }
}
