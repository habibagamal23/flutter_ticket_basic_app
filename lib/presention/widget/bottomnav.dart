import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../Home/screens/home_screen.dart';
import '../search/search_view.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> appScreens = const [
    HomeScreen(),
  SearchView(),
    Center(child: Text("Ticket"))
  ];
  int selectedIndex = 0;
  void _onTapNav(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: _onTapNav,
        items: _buildBottomNavBarItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavBarItems() {
    return const [
      BottomNavigationBarItem(
        icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
        activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
        activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
        label: "Search",
      ),
      BottomNavigationBarItem(
        icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
        activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
        label: "Ticket",
      ),
    ];
  }
}
