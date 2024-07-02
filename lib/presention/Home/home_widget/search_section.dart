
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../../../consatnt/app_style.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppStyle.ticketTabColor),
      child: Row(
        children: [
          Icon(FluentSystemIcons.ic_fluent_search_regular,
              color: AppStyle.SearchIcon),
          const Text("Search"),
        ],
      ),
    );
  }
}
