import 'package:course_app/features/home/presentation/views/widgets/course_view_details_widgets/stepper_item.dart';
import 'package:flutter/material.dart';

class StepperListView extends StatelessWidget {
  const StepperListView({super.key, required this.steps});

  final List<String> steps;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => StepperItem(
        title: steps[index],
        isLast: index == steps.length - 1,
      ),
      itemCount: steps.length,
    );
  }
}
