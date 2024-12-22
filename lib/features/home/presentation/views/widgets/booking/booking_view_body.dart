import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/app_router.dart';
import 'package:course_app/core/utils/styles.dart';
import 'package:course_app/core/widgets/arrow_back_icon.dart';
import 'package:course_app/features/home/presentation/views/widgets/booking/payment_method_container.dart';
import 'package:course_app/features/home/presentation/views/widgets/booking/training_room_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/widgets/custom_button_1.dart';
import 'discounts_available_container.dart';

class BookingViewBody extends StatefulWidget {
  const BookingViewBody({super.key});

  @override
  State<BookingViewBody> createState() => _BookingViewBodyState();
}

class _BookingViewBodyState extends State<BookingViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kScaffoldBookingColor,
      appBar: AppBar(
        leading: const ArrowBackIcon(),
        backgroundColor: AppColor.kScaffoldBookingColor,
        centerTitle: true,
        title: Text(
          "Booking Review",
          style: Styles.textStyle16.copyWith(color: AppColor.kAppBarTitleColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TrainingRoomContainer(),
            const PaymentMethodContainer(),
            const DiscountsAvailableContainer(),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 39.h, bottom: 26.h),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kBookingHistory);
                },
                child: CustomButton1(
                  text: "Book",
                  style:
                      Styles.textStyle16.copyWith(color: AppColor.kWhiteColor),
                  onTap: () {},
                  color: AppColor.kOnBoardingColor,
                  width: 342.w,
                  height: 51.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 26.h),
              child: CustomButton1(
                text: "Cancellation Policy",
                style:
                    Styles.textStyle16.copyWith(color: const Color(0xFF455A64)),
                onTap: () {},
                color: AppColor.kWhiteColor,
                width: 342.w,
                height: 51.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
