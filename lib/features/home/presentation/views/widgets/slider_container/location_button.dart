import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 96.w,
        height: 27.h,
        decoration: BoxDecoration(
          color: AppColor.kIconsColor,
          borderRadius: BorderRadius.circular(33),
        ),
        child: FloatingActionButton(
          backgroundColor: AppColor.kIconsColor,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 16,
                color: Colors.white,
              ),
              Text(
                "Location",
                style: Styles.textStyle12
                    .copyWith(color: Colors.white, fontSize: 12.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
