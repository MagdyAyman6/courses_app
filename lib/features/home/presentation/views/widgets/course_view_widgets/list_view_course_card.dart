import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'build_course_card.dart';

class ListViewCourseCard extends StatelessWidget {
  const ListViewCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: const BuildCourseCard(
          imageUrl: "assets/images/full_stack_card_img.png",
          title: "Course Name",
        ),
      ),
    );
  }
}
