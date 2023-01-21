import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';

class AwardCard extends StatelessWidget {
  const AwardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: height(90),
      decoration: BoxDecoration(
        color: Styles.primaryClr,
        borderRadius: BorderRadius.circular(radius(18)),
      ),
      child: Stack(
        children: [
          Positioned(
            right: width(-45),
            top: height(-45),
            child: Container(
              padding: EdgeInsets.all(height(30)),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: width(18), color: Colors.blue.shade800)),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: width(10)),
              child: Row(
                children: [
                  Container(
                    height: height(60),
                    width: height(60),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      size: height(40),
                      color: Styles.primaryClr,
                    ),
                  ),
                  SizedBox(width: width(10)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("You've got new award",
                          style: Styles.headLIneStyle2
                              .copyWith(color: Colors.white)),
                      Text("You have 95 flights in a year",
                          style: Styles.headLIneStyle4
                              .copyWith(color: Colors.white)),
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
