import 'package:flutter/material.dart';

import '../utils/colors.dart';

class AppDoubleText extends StatelessWidget {
  final String firstText;
  final String secondText;

  const AppDoubleText({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText, style: Styles.headLIneStyle2),
        InkWell(
          onTap: null,
          child: Text(secondText,
              style: Styles.textStyle.copyWith(
                color: Styles.primaryClr,
              )),
        ),
      ],
    );
  }
}
