import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/dimensions.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColor;
  const ThickContainer({
    super.key,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius(20)),
        border: Border.all(
            width: 2.5,
            color: isColor == false ? Colors.white : Color(0xff8accf7)),
      ),
    );
  }
}
