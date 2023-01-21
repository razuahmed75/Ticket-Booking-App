import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_nav/profile/components/header.dart';
import 'package:ticket_booking_app/screens/bottom_nav/profile/components/miles_info.dart';
import 'package:ticket_booking_app/utils/colors.dart';
import 'package:ticket_booking_app/utils/dimensions.dart';

import 'components/award_card.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.symmetric(vertical: height(40), horizontal: width(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header section
              Header(),
              SizedBox(height: height(8)),

              // divider
              Divider(color: Colors.grey.shade400),
              SizedBox(height: height(5)),

              // award detail card
              AwardCard(),
              SizedBox(height: height(25)),

              // accumulated miles section
              Text("Accumulated miles", style: Styles.headLIneStyle2),
              SizedBox(height: height(45)),

              // miles info
              MilesInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
