

import 'package:flutter/material.dart';

import 'custom_layout_builder.dart';

class ContainerWithLine extends StatelessWidget {
  const ContainerWithLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 20,
          width: 10,
          child: const DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                )
            ),
          ),
        ),
        Expanded(child: CoustmomLayoutBuilder(randomdivider: 12,)),
        SizedBox(
          height: 20,
          width: 10,
          child: const DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)
                )
            ),
          ),
        ),
      ],
    );
  }
}
