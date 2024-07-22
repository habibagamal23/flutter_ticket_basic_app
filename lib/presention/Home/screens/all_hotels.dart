import 'package:flutter/material.dart';
import '../../../data/all_json.dart';
import '../home_widget/hotel_widget.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Hotels"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: hotelList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: HotelWidget(hotels: hotelList[index]),
            );
          },
        ),
      ),
    );
  }
}
