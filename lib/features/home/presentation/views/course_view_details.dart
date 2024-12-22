import 'package:course_app/features/home/presentation/views/widgets/course_view_details_widgets/course_view_details_body.dart';
import 'package:flutter/material.dart';

class CourseViewDetails extends StatelessWidget {
  const CourseViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CourseViewDetailsBody(),
    );
  }
}