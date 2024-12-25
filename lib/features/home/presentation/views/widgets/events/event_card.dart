import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

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
                    AssetsData.flutterHackImg,
                  ),
                ),
                color: Colors.white, // Card background color
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 25.h,
                bottom: 8.h,
                right: 12.w,
                left: 8.w,
              ),
              width: 163.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    textAlign: TextAlign.start,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Flutter\n',
                          style: Styles.textStyle12,
                        ),
                        TextSpan(
                          text: 'Hackathon',
                          style: Styles.textStyle12,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kEventsDetails);
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
