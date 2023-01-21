import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_nav/ticket/ticket_body.dart';
import 'package:ticket_booking_app/utils/colors.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgClr,
      body: TicketBody(),
    );
  }
}
