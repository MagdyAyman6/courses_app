import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class PaymentMethodContainer extends StatelessWidget {
  const PaymentMethodContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 26.h, left: 24.w),
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 9.h),
      width: 342.w,
      height: 120.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColor.kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          9.verticalSpace,
          const Text(
            "Payment Method",
            style: Styles.textStyle14,
          ),
          6.verticalSpace,
          Text(
            "You will not be debited until your booking is confirmed",
            style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w500),
          ),
          17.verticalSpace,
          Row(
            children: [
              CircleAvatar(
                  radius: 10.r,
                  backgroundColor: AppColor.kIconsColor,
                  child: const Icon(
                    Icons.check,
                    size: 18,
                    color: AppColor.kWhiteColor,
                  )),
              4.horizontalSpace,
              const Text(
                "Add Card",
                style: Styles.textStyle12,
              )
            ],
          )
        ],
      ),
    );
  }
}
