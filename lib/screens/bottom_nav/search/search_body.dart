import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_nav/search/components/square_container.dart';
import 'package:ticket_booking_app/utils/colors.dart';
import 'package:ticket_booking_app/utils/dimensions.dart';
import 'package:ticket_booking_app/widgets/tickets_tab.dart';

import '../../../widgets/app_double_text.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: height(40),
            left: width(20),
            right: width(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // what are you looking for?
              Text(
                'What are\nyou looking for?',
                style: Styles.headLineStyle1.copyWith(fontSize: height(35)),
              ),
              SizedBox(height: height(20)),

              // airline tickets tab and hotels tab
              TicketTabs(
                firstTabText: "Ariline tickets",
                firstTabPressed: null,
                secondTabText: "Hotels",
                secondTabPressed: null,
              ),
              SizedBox(height: height(25)),

              // departure and arrival
              SquareContainer(
                  icon: Icons.flight_takeoff_rounded, text: "Departure"),
              SizedBox(height: height(15)),
              SquareContainer(icon: Icons.flight_land_rounded, text: "Arrival"),
              SizedBox(height: height(20)),

              // find tickets button
              _FindTicketBtn(),
              SizedBox(height: height(40)),

              // upcoming flights text and view all
              AppDoubleText(
                  firstText: 'Upcoming Flights', secondText: 'View all'),
              SizedBox(height: height(20)),

              // upcoming flights details
              _FlightDetails(),
              SizedBox(height: height(80)),
            ],
          ),
        ),
      ),
    );
  }

  Container _FlightDetails() {
    return Container(
      height: height(360),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // first section
          Container(
            width: Dimensions.screenWidth * 0.42,
            padding: EdgeInsets.all(height(12)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(radius(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 5,
                  spreadRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: height(210),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius(15)),
                      image: DecorationImage(
                        image: AssetImage("images/sit.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(height: height(10)),
                Text(
                  "20% discount on business class tickets from Airline On International",
                  style: Styles.headLIneStyle3,
                )
              ],
            ),
          ),

          // second section
          Column(
            children: [
              Expanded(
                child: Container(
                  width: Dimensions.screenWidth * 0.42,
                  decoration: BoxDecoration(
                    color: Color(0xFF3ABBBB),
                    borderRadius: BorderRadius.circular(radius(15)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: -35,
                        top: -35,
                        child: Container(
                          height: height(90),
                          width: height(90),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF3A9999),
                              width: 10,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width(20), vertical: height(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLIneStyle2.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLIneStyle3.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: Container(
                  width: Dimensions.screenWidth * 0.42,
                  padding: EdgeInsets.symmetric(
                      horizontal: width(20), vertical: height(15)),
                  decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(radius(15)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Take love',
                        style:
                            Styles.headLIneStyle2.copyWith(color: Colors.white),
                      ),
                      SizedBox(height: height(5)),
                      RichText(
                          text: TextSpan(
                        children: [
                          TextSpan(
                              text: "😍",
                              style: Styles.textStyle
                                  .copyWith(fontSize: height(22))),
                          TextSpan(
                              text: "🥰",
                              style: Styles.textStyle
                                  .copyWith(fontSize: height(32))),
                          TextSpan(
                              text: "😘",
                              style: Styles.textStyle
                                  .copyWith(fontSize: height(22))),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _FindTicketBtn() {
    return Container(
        height: height(50),
        width: double.maxFinite,
        alignment: Alignment.center,
        padding:
            EdgeInsets.symmetric(horizontal: width(10), vertical: height(12)),
        decoration: BoxDecoration(
          color: Colors.blue.shade800,
          borderRadius: BorderRadius.circular(radius(8)),
        ),
        child: Text(
          "find tickets",
          style: Styles.textStyle.copyWith(color: Colors.white),
        ));
  }
}
