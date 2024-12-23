import 'package:course_app/core/utils/assets.dart';
import 'package:course_app/features/home/presentation/views/widgets/booking_history/booking_history_app_bar.dart';
import 'package:course_app/features/home/presentation/views/widgets/booking_history/reservation_card.dart';
import 'package:course_app/features/home/presentation/views/widgets/booking_history/tab_bar_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'booking_past_body.dart';

class BookingHistoryViewBody extends StatelessWidget {
  const BookingHistoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: 15.w, right: 20.w, top: 50.h, bottom: 24.h),
            child: const BookingHistoryAppBar(),
          ),
          const TabBarTitle(),
          10.verticalSpace,
          // BookingPastBody(),
        ],
      ),
    );
  }
}
