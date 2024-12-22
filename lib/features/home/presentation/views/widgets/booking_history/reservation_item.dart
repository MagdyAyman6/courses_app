import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReservationItem extends StatelessWidget {
  const ReservationItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.value});

  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 16,
              color: AppColor.kIconsColor,
            ),
            4.horizontalSpace,
            Text(
              title,
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Text(
          value,
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
