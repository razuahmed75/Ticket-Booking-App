import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/colors.dart';

import 'home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgClr,
      body: HomeScreenBody(),
    );
  }
}
