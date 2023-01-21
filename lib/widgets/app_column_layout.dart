import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;

  const AppColumnLayout({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.alignment,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: isColor == false
              ? Styles.headLIneStyle3.copyWith(color: Colors.white)
              : Styles.headLIneStyle3,
        ),
        SizedBox(height: height(5)),
        Text(
          secondText,
          style: isColor == false
              ? Styles.headLIneStyle4.copyWith(color: Colors.white)
              : Styles.headLIneStyle4,
        ),
      ],
    );
  }
}
