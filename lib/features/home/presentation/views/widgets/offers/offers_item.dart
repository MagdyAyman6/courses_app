import 'package:course_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersItem extends StatelessWidget {
  const OffersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        children: [
          Container(
            width: 163.w,
            height: 108.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Image.asset(
              AssetsData.offersItemImg,width: 163.w,fit: BoxFit.fill,),
          ),
          Text("data"),
          Text("data"),
          Text("data"),
        ],
      ),
    );
  }
}
