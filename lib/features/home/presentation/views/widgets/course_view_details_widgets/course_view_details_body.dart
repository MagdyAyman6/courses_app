import 'package:course_app/features/home/presentation/views/widgets/course_view_details_widgets/course_details_content.dart';
import 'package:flutter/material.dart';

import 'course_details_slider.dart';

class CourseViewDetailsBody extends StatelessWidget {
  const CourseViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CourseDetailsSlider(),
        CourseDetailsContent(),
      ],
    );
  }
}
