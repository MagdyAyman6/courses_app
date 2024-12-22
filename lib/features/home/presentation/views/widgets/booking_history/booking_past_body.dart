import 'package:course_app/features/home/presentation/views/widgets/booking_history/reservation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/assets.dart';

class BookingPastBody extends StatelessWidget {
  const BookingPastBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        SizedBox(
          width: 390.w,
          height: 330.h,
          child: Image.asset(
            AssetsData.bookingWatchImg,
            fit: BoxFit.fill,
          ),
        ),
        20.verticalSpace,
        const ReservationCard(),
      ],
    );
  }
}
