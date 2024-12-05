import 'package:course_app/features/home/presentation/views/widgets/slider_container.dart';
import 'package:flutter/material.dart';

class MyHomePageViewBody extends StatelessWidget {
  const MyHomePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SliderContainer(),
        ],
      ),
    );
  }
}
