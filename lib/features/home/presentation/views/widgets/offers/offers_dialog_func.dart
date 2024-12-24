import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showOfferDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.local_offer_outlined,
                    size: 20,
                    color: AppColor.kBlack30Color,
                  ),
                  Text(
                    "30% off 10 booking (up to EGP 150)",
                    textAlign: TextAlign.center,
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.h),
                alignment: Alignment.center,
                width: 100.w,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColor.kGrayColor),
                ),
                child: Text(
                  "Courses150",
                  style: Styles.textStyle14.copyWith(
                    color: AppColor.kGrayColor,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.kIconsColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
                  child: Text(
                    "Copy",
                    style: Styles.textStyle16.copyWith(
                      color: AppColor.kWhiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
