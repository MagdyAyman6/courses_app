import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/styles.dart';
import 'package:course_app/features/home/presentation/views/widgets/booking_history/booking_past_body.dart';
import 'package:course_app/features/home/presentation/views/widgets/booking_history/booking_upcoming_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarTitle extends StatefulWidget {
  const TabBarTitle({super.key});

  @override
  State<TabBarTitle> createState() => _TabBarTitleState();
}

class _TabBarTitleState extends State<TabBarTitle> {
  bool isUpcoming = false;
  String selectedTab = "past";

  // Tracks whether "Upcoming" is selected
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Toggle Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isUpcoming = false;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 175.w,
                height: 50.h,
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                  horizontal: 20.w,
                ),
                decoration: BoxDecoration(
                  color: isUpcoming
                      ? AppColor.kGreyTabBarColor
                      : AppColor.kIconsColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    bottomLeft: Radius.circular(8.r),
                  ),
                ),
                child: Text(
                  'Past',
                  style: Styles.textStyle14.copyWith(
                    color: isUpcoming
                        ? AppColor.kBlackColor
                        : AppColor.kWhiteColor,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isUpcoming = true;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 175.w,
                height: 50.h,
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                  horizontal: 20.w,
                ),
                decoration: BoxDecoration(
                  color: isUpcoming
                      ? AppColor.kIconsColor
                      : AppColor.kGreyTabBarColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),
                  ),
                ),
                child: Text(
                  'Upcoming',
                  style: Styles.textStyle14.copyWith(
                    color: isUpcoming
                        ? AppColor.kWhiteColor
                        : AppColor.kBlackColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        // Content changes based on selection
        Center(
          child: isUpcoming == false
              ? const BookingUpcomingBody()
              : const BookingPastBody(),
        ),
      ],
    );
  }
}

// Container(
// height: 50.h,
// width: 342.w,
// padding: const EdgeInsets.all(5),
// decoration: BoxDecoration(
// color: AppColor.kWhiteColor,
// borderRadius: BorderRadius.circular(10.r),
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// ElevatedButton(
// style: ElevatedButton.styleFrom(
// backgroundColor:
// !isSignIn ? Colors.white : AppColor.kTabBarColor,
// shadowColor: !isSignIn ? null : Colors.transparent,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10.r)),
// ),
// onPressed: () => onTabChanged(false),
// child: Text(
// "Past",
// style: Styles.textStyle16.copyWith(
// color: !isSignIn ? AppColor.kPrimaryColor : Colors.black,
// ),
// )),
// ElevatedButton(
// style: ElevatedButton.styleFrom(
// backgroundColor:
// isSignIn ? AppColor.kIconsColor : AppColor.kTabBarColor,
// shadowColor: isSignIn ? null : Colors.transparent,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10.r)),
// ),
// onPressed: () => onTabChanged(true),
// child: Text(
// "UpComing",
// style: Styles.textStyle16.copyWith(
// color: isSignIn ? AppColor.kWhiteColor : Colors.black,
// ),
// ),
// ),
// ],
// ),
// )
