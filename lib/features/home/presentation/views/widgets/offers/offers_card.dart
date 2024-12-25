import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/assets.dart';
import 'package:course_app/core/utils/styles.dart';
import 'package:course_app/features/home/presentation/views/widgets/offers/offers_dialog_func.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: AppColor.kWhiteColor,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 163.w,
              height: 108.h, // Adjust width as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ), // Same border radius
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.offersItemImg,
                  ),
                ),
                color: Colors.white, // Card background color
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.h, top: 2.h),
              child: Text(
                "Today’s offer",
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10.h,
                bottom: 10.h,
                right: 12.w,
                left: 8.w,
              ),
              width: 163.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '10% discount on\n',
                          style: Styles.textStyle12,
                        ),
                        TextSpan(
                          text: '3 hours or more',
                          style: Styles.textStyle12,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showOfferDialog(context);
                    },
                    child: CircleAvatar(
                        radius: 15.r,
                        backgroundColor: AppColor.kIconsColor,
                        child: const Icon(
                          color: AppColor.kWhiteColor,
                          Icons.arrow_forward,
                          size: 18,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
