import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class TicketTabs extends StatelessWidget {
  final String firstTabText, secondTabText;
  final Function()? firstTabPressed, secondTabPressed;

  const TicketTabs({
    super.key,
    required this.firstTabText,
    required this.secondTabText,
    required this.firstTabPressed,
    required this.secondTabPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: firstTabPressed,
            child: Container(
              height: height(40),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFF4F6FD),
                    width: 3.5,
                  ),
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(50))),
              child: Text(
                firstTabText,
                style: Styles.headLIneStyle4,
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: secondTabPressed,
            child: Container(
              height: height(40),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xFFF4F6FD),
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(50))),
              child: Text(
                secondTabText,
                style: Styles.headLIneStyle4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
