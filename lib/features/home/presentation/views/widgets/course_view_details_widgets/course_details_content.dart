import 'package:course_app/features/home/presentation/views/widgets/course_view_details_widgets/stepper_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class CourseDetailsContent extends StatelessWidget {
  const CourseDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 375.h,
      child: Container(
        padding: EdgeInsets.only(left: 24.w, top: 12.h),
        width: 390.w,
        // height: 695.h,
        decoration: BoxDecoration(
          color: AppColor.kWhiteColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(32.r), topLeft: Radius.circular(32.r)),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Course Name",
                style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.w700, color: AppColor.kBlackColor),
              ),
              Card(
                elevation: 3,
                margin: EdgeInsets.only(right: 5.w, top: 16.h),
                child: Container(
                  alignment: Alignment.center,
                  width: 94.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    color: AppColor.kWhiteColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    "Description",
                    style: Styles.textStyle14
                        .copyWith(color: const Color(0xff515151)),
                  ),
                ),
              ),
              24.verticalSpace,
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style:
                    Styles.textStyle12.copyWith(color: const Color(0xff333333)),
              ),
              24.verticalSpace,
              Text(
                "Content",
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff20473E),
                ),
              ),
              StepperListView(),
              25.verticalSpace,
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_double_arrow_down_sharp,
                    ),
                    color: const Color(0xFF20473E),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 24,
                          color: AppColor.kIconsColor,
                        ),
                        Text(
                          "Location",
                          style: Styles.textStyle16
                              .copyWith(color: AppColor.kIconsColor),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
