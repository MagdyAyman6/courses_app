import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'offers_app_bar.dart';
import 'offers_item.dart';

class OffersViewBody extends StatelessWidget {
  const OffersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 60.h,
            right: 25.w,
            left: 25.w,
            bottom: 16.h,
          ),
          child: const OffersAppBar(),
        ),
        const OffersItem(),
      ],
    );
  }
}
