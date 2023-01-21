import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';

class BarCodeSection extends StatelessWidget {
  const BarCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: width(15), vertical: height(20)),
      margin: EdgeInsets.only(left: width(15), right: width(20)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(radius(20)))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius(15)),
        child: BarcodeWidget(
          barcode: Barcode.code128(),
          data: 'https://github.com/martinovovo',
          drawText: false,
          color: Styles.textClr,
          width: double.infinity,
          height: 70,
        ),
      ),
    );
  }
}
