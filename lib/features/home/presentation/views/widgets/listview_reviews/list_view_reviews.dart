import 'package:course_app/core/utils/styles.dart';
import 'package:course_app/features/home/presentation/views/widgets/listview_reviews/list_view_item.dart';
import 'package:course_app/features/home/presentation/views/widgets/slider_container/slider_container_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewReviews extends StatelessWidget {
  const ListViewReviews({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.w, top: 10.h, bottom: 25.h),
          child: Text(
            "Reviews",
            style: Styles.textStyle20
                .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 140.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const ListViewItem(),
            itemCount: 6,
          ),
        ),
        Align(
            alignment: Alignment.center,
            child: SliderContainerIndicator(controller: controller)),
      ],
    );
  }
}
