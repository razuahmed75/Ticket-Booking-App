import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/colors.dart';

import 'search_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgClr,
      body: SearchBody(),
    );
  }
}
