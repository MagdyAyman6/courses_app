import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/arrow_back_icon.dart';
import 'list_view_course_card.dart';

class CourseViewBody extends StatelessWidget {
  const CourseViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: const ArrowBackIcon(),
        centerTitle: true,
        title: Text(
          "Courses",
          style: Styles.textStyle20.copyWith(
              color: AppColor.kBlackColor, fontWeight: FontWeight.w500),
        ),
      ),
      body: const ListViewCourseCard(),
    );
  }
}
