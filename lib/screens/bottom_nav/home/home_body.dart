import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/data/flight_info_list.dart';
import 'package:ticket_booking_app/data/hotel_inflo_list.dart';
import 'package:ticket_booking_app/screens/bottom_nav/home/components/ticket_view.dart';
import 'package:ticket_booking_app/utils/dimensions.dart';
import 'package:ticket_booking_app/widgets/app_double_text.dart';

import '../../../utils/colors.dart';
import 'components/hotel_screen.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            left: width(20),
            right: width(20),
            top: height(40),
          ),
          child: Column(
            children: [
              // header text and logo
              _HeaderSection(),
              SizedBox(height: height(25)),

              // search bar
              _SearchField(),
              SizedBox(height: height(40)),

              // upcoming flights
              AppDoubleText(
                  firstText: 'Upcoming Flights', secondText: 'View all'),
              SizedBox(height: height(15)),

              // upcoming flight listview
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: ticketList
                      .map((element) =>
                          TicketView(tickets: element, isColor: false))
                      .toList(),
                ),
              ),
              SizedBox(height: height(15)),

              // hotels
              AppDoubleText(firstText: 'Hotels', secondText: 'View all'),
              SizedBox(height: height(15)),

              // hotel listview
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map((element) => HotelScreen(hotel: element))
                        .toList(),
                  )),
              SizedBox(height: height(80)),
            ],
          ),
        ),
      ),
    );
  }

  Container _SearchField() {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: width(12), vertical: height(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius(10)),
        color: Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          Icon(
            FluentSystemIcons.ic_fluent_search_regular,
            color: Color(0xFFBFC205),
          ),
          SizedBox(width: width(5)),
          Text('Search', style: Styles.headLIneStyle4),
        ],
      ),
    );
  }

  Row _HeaderSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good morning",
              style: Styles.headLIneStyle3,
            ),
            SizedBox(height: height(5)),
            Text(
              "Book Tickets",
              style: Styles.headLineStyle1,
            ),
          ],
        ),
        Container(
          height: height(50),
          width: height(50),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius(10)),
              image: DecorationImage(
                image: AssetImage("images/img_1.png"),
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }
}
