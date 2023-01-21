import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';

class SquareContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  const SquareContainer({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: width(10), vertical: height(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius(8)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey.shade400,
          ),
          SizedBox(width: width(10)),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
