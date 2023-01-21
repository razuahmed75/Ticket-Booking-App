import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // image
        Container(
          height: height(86),
          width: height(86),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius(10)),
              image: DecorationImage(image: AssetImage("images/img_1.png"))),
        ),
        SizedBox(width: width(10)),

        // column text
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Book Tickets", style: Styles.headLineStyle1),
            SizedBox(height: height(2)),
            Text(
              "New-York",
              style: TextStyle(
                fontSize: height(14),
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: height(8)),
            Container(
              padding: EdgeInsets.all(height(3)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius(50)),
                color: Colors.grey.shade300,
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF526799),
                    ),
                    child: Icon(
                      FluentSystemIcons.ic_fluent_shield_filled,
                      color: Colors.white,
                      size: height(15),
                    ),
                  ),
                  Text(
                    "Premium status",
                    style: TextStyle(
                      color: const Color(0xFF526799),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const Spacer(),

        // edit
        Text("Edit",
            style: Styles.textStyle.copyWith(color: Colors.grey.shade500)),
      ],
    );
  }
}
