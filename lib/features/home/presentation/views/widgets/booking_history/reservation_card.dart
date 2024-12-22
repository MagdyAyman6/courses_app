import 'package:course_app/core/widgets/custom_button_1.dart';
import 'package:course_app/features/home/presentation/views/widgets/booking_history/reservation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class ReservationCard extends StatelessWidget {
  const ReservationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        color: AppColor.kWhiteColor,
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
        width: 370.w,
        height: 300.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Training Room",
              style: Styles.textStyle16,
            ),
            Text(
              "Cancellation Deadline: 11/2/2024",
              style: Styles.textStyle14.copyWith(
                  color: AppColor.kIconsColor, fontWeight: FontWeight.w400),
            ),
            17.verticalSpace,
            const ReservationItem(
              icon: Icons.date_range,
              title: "Date",
              value: "18/2/2024",
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
            17.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton1(
                  text: "Extra Time",
                  style:
                      Styles.textStyle16.copyWith(color: AppColor.kWhiteColor),
                  onTap: () {},
                  color: AppColor.kIconsColor,
                  width: 160.w,
                  height: 50.h,
                ),
                CustomButton1(
                  text: "Add Items",
                  style:
                      Styles.textStyle16.copyWith(color: AppColor.kBlackColor),
                  onTap: () {},
                  color: AppColor.kGrayColor.withOpacity(0.3),
                  width: 160.w,
                  height: 50.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
