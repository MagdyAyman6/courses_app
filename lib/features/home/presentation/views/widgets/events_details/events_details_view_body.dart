import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/assets.dart';
import 'package:course_app/core/widgets/custom_button_1.dart';
import 'package:course_app/features/home/presentation/views/widgets/course_view_details_widgets/stepper_list_view.dart';
import 'package:course_app/features/home/presentation/views/widgets/events_details/roxy_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import 'events_details_app_bar.dart';
import 'events_details_indicator.dart';

class EventsDetailsViewBody extends StatelessWidget {
  const EventsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              fit: BoxFit.cover,
              AssetsData.eventsDetailsCover,
              height: 385.h,
              width: 390.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 50.h,
              ),
              child: const EventsDetailsAppBar(),
            ),
            Positioned(
              top: 80.h,
              child: const RoxyButton(),
            ),
            Positioned(
              right: 153.w,
              top: 300.h,
              child: EventsDetailsIndicator(
                controller: PageController(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 350.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 24.h,
              ),
              width: 390.w,
              height: 500.h,
              decoration: BoxDecoration(
                color: AppColor.kWhiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32.r),
                  topLeft: Radius.circular(32.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details',
                    style: Styles.textStyle16.copyWith(
                      color: AppColor.kIconsColor,
                    ),
                  ),
                  const StepperListView(
                    steps: [
                      "We will learn how to make ceramics and use them after that.",
                      "The workshop will last for one day and last 3 hours. We will learn about it.",
                      "We will learn about the types of clay to differentiate the final result of the product.",
                      "How do I make shapes with clay without them cracking?.",
                      "We will burn the shapes we made and find out how they burn so that you can use them after that and live with you.",
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 770.h),
              alignment: Alignment.center,
              height: 80.h,
              width: 395.w,
              decoration: BoxDecoration(
                color: AppColor.kGrayColor.withOpacity(0.08),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.r),
                  topLeft: Radius.circular(16.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "200.0 EGP/Person",
                    style: Styles.textStyle16.copyWith(
                      color: AppColor.kIconsColor,
                    ),
                  ),
                  CustomButton1(
                    text: "Book Now",
                    style: Styles.textStyle16.copyWith(
                      color: AppColor.kWhiteColor,
                    ),
                    onTap: () {},
                    color: AppColor.kIconsColor,
                    width: 131.w,
                    height: 38.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
