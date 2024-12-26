import 'package:course_app/core/utils/styles.dart';
import 'package:course_app/core/widgets/custom_button_1.dart';
import 'package:course_app/features/home/presentation/views/widgets/course_view_details_widgets/stepper_list_view.dart';
import 'package:course_app/features/home/presentation/views/widgets/membership/my_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';

class MembershipViewBody extends StatelessWidget {
  const MembershipViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.kWhiteColor,
        centerTitle: true,
        title: Text(
          "Membership",
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        child: Column(
          children: [
            Row(
              children: [
                const MyCheckBox(),
                Text(
                  "A Month",
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              elevation: 4,
              color: AppColor.kWhiteColor,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: StepperListView(
                  steps: [
                    "1250 LE for one person",
                    "included daily drink and movie night for you and your friends",
                    "4 invitations for your friends spend a day in Courses included drink",
                  ],
                ),
              ),
            ),
            30.verticalSpace,
            Row(
              children: [
                const MyCheckBox(),
                Text(
                  "15 Separate days",
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              elevation: 4,
              color: AppColor.kWhiteColor,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: StepperListView(
                  steps: [
                    "750 LE for one person",
                    "One invitation for your friends spend a day in Courses included drink",
                  ],
                ),
              ),
            ),
            200.verticalSpace,
            CustomButton1(
              text: "Next",
              style: Styles.textStyle16.copyWith(
                  color: AppColor.kWhiteColor, fontWeight: FontWeight.w500),
              onTap: () {},
              color: AppColor.kSelectedIconColor,
              width: 342.w,
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
