import 'package:flutter/material.dart';

class CoustmomLayoutBuilder extends StatelessWidget {
  const CoustmomLayoutBuilder({super.key, required this.randomdivider});
  final int randomdivider;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                (constraints.constrainWidth() / randomdivider).floor(),
                (index) => const SizedBox(
                      width: 3,
                      height: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    )));
      },
    );
  }
}
