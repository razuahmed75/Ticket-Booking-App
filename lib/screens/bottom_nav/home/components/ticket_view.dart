import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/colors.dart';
import 'package:ticket_booking_app/utils/dimensions.dart';
import 'package:ticket_booking_app/widgets/laout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/thick_container.dart';

import '../../../../widgets/app_column_layout.dart';

class TicketView extends StatelessWidget {
  final tickets;
  final bool? isColor;
  const TicketView({
    super.key,
    required this.tickets,
    this.isColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenWidth - 120,
      height: height(173),
      margin: EdgeInsets.only(right: width(20)),
      child: Container(
        child: Column(
          children: [
            /* 
              showing the blue part of the card/ticket
            */
            Container(
              padding: EdgeInsets.all(height(16)),
              decoration: BoxDecoration(
                color: isColor == false ? Color(0xFF526799) : Colors.white,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(radius(20))),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${tickets["from"]["code"]}",
                        style: isColor == false
                            ? Styles.headLIneStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLIneStyle3,
                      ),
                      const Spacer(),
                      ThickContainer(isColor: isColor),
                      Expanded(
                          child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: SizedBox(
                              child: LayoutBuilderWidget(
                                sections: 6,
                                isColor: isColor,
                                width: width(3),
                              ),
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == false
                                        ? Colors.white
                                        : Color(0xff8accf7))),
                          ),
                        ],
                      )),
                      ThickContainer(isColor: isColor),
                      const Spacer(),
                      Text(
                        "${tickets["to"]["code"]}",
                        style: isColor == false
                            ? Styles.headLIneStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLIneStyle3,
                      ),
                    ],
                  ),
                  SizedBox(height: height(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${tickets["from"]["name"]}",
                        style: isColor == false
                            ? Styles.headLIneStyle4.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLIneStyle4,
                      ),
                      Text(
                        "${tickets["flying_time"]}",
                        style: isColor == false
                            ? Styles.headLIneStyle3.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )
                            : Styles.headLIneStyle3
                                .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${tickets["to"]["name"]}",
                        style: isColor == false
                            ? Styles.headLIneStyle4.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLIneStyle4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
             showing the orange part of the card/ticket
            */
            Container(
              decoration: BoxDecoration(
                  color: isColor == false ? Styles.orangeClr : Colors.white,
                  borderRadius: BorderRadius.vertical(
                      bottom:
                          Radius.circular(radius(isColor == false ? 20 : 0)))),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: width(10),
                        height: height(20),
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                          color: isColor == false ? Styles.bgClr : Colors.white,
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(radius(10))),
                        )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: LayoutBuilderWidget(
                              width: width(5), sections: 15, isColor: isColor),
                        ),
                      ),
                      SizedBox(
                        width: width(10),
                        height: height(20),
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                          color: isColor == false ? Styles.bgClr : Colors.white,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(radius(10))),
                        )),
                      ),
                    ],
                  ),
                  //
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width(16), vertical: width(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          firstText: '${tickets["date"]}',
                          secondText: 'Date',
                          isColor: isColor,
                        ),
                        AppColumnLayout(
                          firstText: '${tickets["departure_time"]}',
                          secondText: 'Departure time',
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor,
                        ),
                        AppColumnLayout(
                          firstText: '${tickets["number"]}',
                          secondText: 'Number',
                          alignment: CrossAxisAlignment.end,
                          isColor: isColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height(10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
