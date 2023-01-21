import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/colors.dart';
import 'package:ticket_booking_app/utils/dimensions.dart';

class HotelScreen extends StatelessWidget {
  final hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenWidth * 0.6,
      height: height(350),
      padding:
          EdgeInsets.symmetric(horizontal: width(15), vertical: height(15)),
      margin: EdgeInsets.only(right: width(20), top: height(5)),
      decoration: BoxDecoration(
        color: Styles.primaryClr,
        borderRadius: BorderRadius.circular(radius(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Container(
            height: height(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius(12)),
                image: DecorationImage(
                    image: AssetImage('images/${hotel["image"]}'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: height(10)),
          Text(
            "${hotel["place"]}",
            style: Styles.headLIneStyle2.copyWith(
              color: Colors.grey.shade400,
            ),
          ),
          SizedBox(height: height(5)),
          Text(
            "${hotel["destination"]}",
            style: Styles.headLIneStyle2.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(height: height(8)),
          Text(
            "\$${hotel["price"]}/night",
            style: Styles.headLineStyle1.copyWith(
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
