import 'package:flutter/material.dart';
import 'package:ticket_booking_app/data/flight_info_list.dart';
import 'package:ticket_booking_app/screens/bottom_nav/home/components/ticket_view.dart';
import 'package:ticket_booking_app/screens/bottom_nav/ticket/components/bar_code.dart';
import 'package:ticket_booking_app/utils/colors.dart';
import 'package:ticket_booking_app/utils/dimensions.dart';
import 'package:ticket_booking_app/widgets/app_column_layout.dart';
import 'package:ticket_booking_app/widgets/laout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/tickets_tab.dart';

class TicketBody extends StatelessWidget {
  const TicketBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding:
              EdgeInsets.symmetric(horizontal: width(20), vertical: height(25)),
          children: [
            // headline text ticket
            SizedBox(height: height(40)),
            Text("Tickets", style: Styles.headLineStyle1),
            SizedBox(height: height(20)),

            // ticket tabs
            TicketTabs(
              firstTabText: "Upcoming",
              secondTabText: "Previous",
              firstTabPressed: null,
              secondTabPressed: null,
            ),
            SizedBox(height: height(20)),

            // first section of ticket info
            Container(
                padding: EdgeInsets.only(left: width(15)),
                child: TicketView(
                  tickets: ticketList[0],
                  isColor: true,
                )),
            SizedBox(height: 1),

            // second section of ticket info
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: width(15), vertical: height(20)),
              margin: EdgeInsets.only(left: width(15), right: width(20)),
              color: Colors.white,
              child: Column(
                children: [
                  // passenger and passport
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.start,
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                        isColor: true,
                      ),
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        firstText: "5221 364869",
                        secondText: "Passport",
                        isColor: true,
                      ),
                    ],
                  ),
                  SizedBox(height: height(20)),

                  // dot increament
                  LayoutBuilderWidget(sections: 15, width: width(5)),
                  SizedBox(height: height(20)),

                  // number of ticket and booking code
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.start,
                        firstText: "364738 28274478",
                        secondText: "Number of E-tickiet",
                        isColor: true,
                      ),
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        firstText: "B2SG28",
                        secondText: "Booking code",
                        isColor: true,
                      ),
                    ],
                  ),
                  SizedBox(height: height(20)),

                  // dot increament
                  LayoutBuilderWidget(sections: 15, width: width(5)),
                  SizedBox(height: height(20)),

                  // payment method and price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("images/visa.png", scale: 11),
                              Text(" *** 2462", style: Styles.headLIneStyle3),
                            ],
                          ),
                          SizedBox(height: height(5)),
                          Text("Payment method", style: Styles.headLIneStyle4),
                        ],
                      ),
                      const AppColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        firstText: "\$249.99",
                        secondText: "Price",
                        isColor: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 1),
            // bar code section
            BarCodeSection(),
            SizedBox(height: height(20)),

            // ticket
            Container(
                padding: EdgeInsets.only(left: width(15)),
                child: TicketView(
                  tickets: ticketList[0],
                  isColor: false,
                )),
          ],
        ),

        // fixed rounded button container
        _LeftRoundedContainer(),
        _RightRoundedContainer(),
      ],
    );
  }

  Positioned _RightRoundedContainer() {
    return Positioned(
      right: width(25),
      top: height(295),
      child: Container(
        padding: EdgeInsets.all(height(3)),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 3, color: Styles.textClr),
        ),
        child: CircleAvatar(
          radius: height(4),
          backgroundColor: Styles.textClr,
        ),
      ),
    );
  }

  Positioned _LeftRoundedContainer() {
    return Positioned(
      left: width(19),
      top: height(295),
      child: Container(
        padding: EdgeInsets.all(height(3)),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 3, color: Styles.textClr),
        ),
        child: CircleAvatar(
          radius: height(4),
          backgroundColor: Styles.textClr,
        ),
      ),
    );
  }
}
