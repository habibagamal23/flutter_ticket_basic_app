import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../consatnt/app_style.dart';
import 'big_dot.dart';
import 'custom_layout_builder.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyle.ticketBlue,
                  borderRadius:const  BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  //first line with icon
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyle.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const Bigdot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: CoustmomLayoutBuilder(randomdivider: 5),
                          ),
                          Center(
                              child: Transform.rotate(
                                  angle: 1.57,
                                  child: const Icon(
                                    Icons.airplanemode_active_rounded,
                                    color: Colors.white,
                                  )))
                        ],
                      )),
                      const Bigdot(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyle.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  //second line just text
                  Row(
                    children: [
                      Text(
                        "New-york",
                        style: AppStyle.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M",
                        style: AppStyle.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Londen",
                        style: AppStyle.headLineStyle4
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
