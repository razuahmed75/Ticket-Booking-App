import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/colors.dart';

import 'profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgClr,
      body: ProfileBody(),
    );
  }
}
