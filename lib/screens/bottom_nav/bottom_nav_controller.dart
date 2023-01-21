import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_nav/home/home.dart';
import 'package:ticket_booking_app/screens/bottom_nav/search/search_screen.dart';
import 'package:ticket_booking_app/screens/bottom_nav/ticket/ticket_screen.dart';

import 'profile/profile_screen.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({super.key});

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _selectedIndex = 0;
  _onItemTapped(int index) => setState(() => _selectedIndex = index);

  List _widgetOptions = [
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          elevation: 10,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blueGrey,
          showSelectedLabels: false,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_home_regular,
              ),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_home_filled,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_search_regular,
              ),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_search_filled,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_ticket_regular,
              ),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_ticket_filled,
              ),
              label: 'Ticket',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_person_regular,
              ),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_person_filled,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
