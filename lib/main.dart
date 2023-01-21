import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_nav/bottom_nav_controller.dart';
import 'package:ticket_booking_app/utils/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookTickets',
      theme: lightTheme,
      home: BottomNavController(),
    );
  }
}
