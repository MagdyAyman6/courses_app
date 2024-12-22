import 'package:course_app/core/widgets/custom_button_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class DiscountsAvailableContainer extends StatelessWidget {
  const DiscountsAvailableContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 26.h, left: 24.w),
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 7.h),
      width: 342.w,
      height: 235.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColor.kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Discounts Available",
                style: Styles.textStyle14,
              ),
              CustomButton1(
                width: 99.w,
                height: 33.h,
                text: "Add Promo",
                style: Styles.textStyle12.copyWith(color: AppColor.kIconsColor),
                color: AppColor.kIconsColor.withOpacity(0.33),
                onTap: () {},
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
            width: 292.w,
            height: 42.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(
                width: 1.w,
                color: AppColor.kBlackColor.withOpacity(0.25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.discount_outlined,
                  size: 20,
                ),
                const Text(
                  "30% off 10 booking (up to EGP 150)",
                  style: Styles.textStyle12,
                ),
                CustomButton1(
                    width: 63.w,
                    height: 26.h,
                    text: "Apply",
                    style: Styles.textStyle12
                        .copyWith(color: AppColor.kIconsColor),
                    onTap: () {},
                    color: AppColor.kIconsColor.withOpacity(0.33))
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: AppColor.kBlackColor.withOpacity(0.15),
          ),
          const Text(
            "Booking Charges",
            style: Styles.textStyle14,
          ),
          Divider(
            thickness: 1,
            color: AppColor.kBlackColor.withOpacity(0.15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "x1 Day EGP 100.0 x 1 Seat",
                style:
                    Styles.textStyle14.copyWith(color: const Color(0xFF464646)),
              ),
              Text(
                "EGP 100.0",
                style:
                    Styles.textStyle14.copyWith(color: const Color(0xFF464646)),
              ),
            ],
          ),
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Due",
                style: Styles.textStyle14.copyWith(color: AppColor.kIconsColor),
              ),
              Text(
                "EGP 100.0",
                style: Styles.textStyle14.copyWith(color: AppColor.kIconsColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
