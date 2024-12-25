import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'offers_card.dart';

class OffersGridView extends StatelessWidget {
  const OffersGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.only(left: 23.w, right: 24.w, bottom: 20.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          mainAxisSpacing: 8.h, //Space between columns
          crossAxisSpacing: 8.w, // Space between rows
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return const OfferCard();
        },
      ),
    );
  }
}
