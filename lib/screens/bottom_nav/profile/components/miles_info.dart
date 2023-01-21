import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../../widgets/app_column_layout.dart';

class MilesInfo extends StatelessWidget {
  const MilesInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          // miles number
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("192802",
                  style: Styles.headLineStyle1.copyWith(
                    fontSize: font(42),
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
          SizedBox(height: height(35)),

          // miles info section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Miles accured",
                  style:
                      Styles.textStyle.copyWith(color: Colors.grey.shade500)),
              Text("23 May 2021",
                  style:
                      Styles.textStyle.copyWith(color: Colors.grey.shade500)),
            ],
          ),
          SizedBox(height: height(25)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppColumnLayout(
                firstText: "23 042",
                secondText: "Miles",
                alignment: CrossAxisAlignment.start,
              ),
              AppColumnLayout(
                firstText: "Airline CO",
                secondText: "Received from",
                alignment: CrossAxisAlignment.end,
              ),
            ],
          ),
          SizedBox(height: height(25)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppColumnLayout(
                firstText: "24",
                secondText: "Miles",
                alignment: CrossAxisAlignment.start,
              ),
              AppColumnLayout(
                firstText: "McDonal's",
                secondText: "Received from",
                alignment: CrossAxisAlignment.end,
              ),
            ],
          ),
          SizedBox(height: height(25)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppColumnLayout(
                firstText: "52 340",
                secondText: "Miles",
                alignment: CrossAxisAlignment.start,
              ),
              AppColumnLayout(
                firstText: "Exuma",
                secondText: "Received from",
                alignment: CrossAxisAlignment.end,
              ),
            ],
          ),
          SizedBox(height: height(35)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("How to get more miles",
                  style: Styles.headLIneStyle4.copyWith(
                    color: Styles.primaryClr,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
