import 'package:course_app/features/home/presentation/views/widgets/booking_history/reservation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class BookingUpcomingBody extends StatelessWidget {
  const BookingUpcomingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2,
          child: Container(
            color: AppColor.kWhiteColor,
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
            width: 355.w,
            height: 246.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Training Room",
                  style: Styles.textStyle16,
                ),
                10.verticalSpace,
                const ReservationItem(
                  icon: Icons.date_range,
                  title: "Date",
                  value: "17/2/2024",
                ),
                const ReservationItem(
                  icon: Icons.access_time,
                  title: "Time",
                  value: "09:00 Am",
                ),
                const ReservationItem(
                  icon: Icons.event_seat_outlined,
                  title: "Seats",
                  value: "x1",
                ),
                const ReservationItem(
                  icon: Icons.attach_money_outlined,
                  title: "Deposit",
                  value: "50.00 LE",
                ),
                const ReservationItem(
                  icon: Icons.attach_money_outlined,
                  title: "The rest of the money",
                  value: "50.00 LE",
                ),
                const ReservationItem(
                  icon: Icons.coffee_outlined,
                  title: "Coffee",
                  value: "20.00 LE",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Booking Status",
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Paid",
                      style: Styles.textStyle14.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColor.kIconsColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Card(
          elevation: 2,
          child: Container(
            color: AppColor.kWhiteColor,
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
            width: 355.w,
            height: 246.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Meeting Room",
                  style: Styles.textStyle16,
                ),
                10.verticalSpace,
                const ReservationItem(
                  icon: Icons.date_range,
                  title: "Date",
                  value: "15/2/2024",
                ),
                const ReservationItem(
                  icon: Icons.access_time,
                  title: "Time",
                  value: "09:00 Am",
                ),
                const ReservationItem(
                  icon: Icons.event_seat_outlined,
                  title: "Seats",
                  value: "x1",
                ),
                const ReservationItem(
                  icon: Icons.attach_money_outlined,
                  title: "Deposit",
                  value: "50.00 LE",
                ),
                const ReservationItem(
                  icon: Icons.attach_money_outlined,
                  title: "The rest of the money",
                  value: "00.00 LE",
                ),
                const ReservationItem(
                  icon: Icons.coffee_outlined,
                  title: "Coffee",
                  value: "20.00 LE",
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 2,
          child: Container(
            color: AppColor.kWhiteColor,
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
            width: 355.w,
            height: 246.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Funny Room",
                  style: Styles.textStyle16,
                ),
                10.verticalSpace,
                const ReservationItem(
                  icon: Icons.date_range,
                  title: "Date",
                  value: "10/2/2024",
                ),
                const ReservationItem(
                  icon: Icons.access_time,
                  title: "Time",
                  value: "09:00 Am",
                ),
                const ReservationItem(
                  icon: Icons.event_seat_outlined,
                  title: "Seats",
                  value: "x1",
                ),
                const ReservationItem(
                  icon: Icons.attach_money_outlined,
                  title: "Deposit",
                  value: "50.00 LE",
                ),
                const ReservationItem(
                  icon: Icons.attach_money_outlined,
                  title: "The rest of the money",
                  value: "00.00 LE",
                ),
                const ReservationItem(
                  icon: Icons.coffee_outlined,
                  title: "Coffee",
                  value: "20.00 LE",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
