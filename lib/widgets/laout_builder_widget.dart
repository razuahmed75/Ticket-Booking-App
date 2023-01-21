import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;

  const LayoutBuilderWidget(
      {super.key, this.isColor, required this.sections, required this.width});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constrains) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            ...List.generate(
                (constrains.constrainWidth() / sections).floor(),
                (index) => SizedBox(
                      height: height(1),
                      width: width,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        color: isColor == false ? Colors.white : Styles.textClr,
                      )),
                    )),
          ],
        );
      },
    );
  }
}
