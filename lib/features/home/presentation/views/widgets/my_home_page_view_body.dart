import 'package:course_app/features/home/presentation/views/widgets/listview_reviews/list_view_reviews.dart';
import 'package:course_app/features/home/presentation/views/widgets/slider_container/slider_container.dart';
import 'package:flutter/material.dart';

class MyHomePageViewBody extends StatelessWidget {
  MyHomePageViewBody({super.key});

  final PageController controller = PageController();
  final int _currentPage = 0;

  void nextPage() {
    if (_currentPage < 5) {
      controller.nextPage(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInCirc,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: SliderContainer(
                controller: controller,
              ),
            ),
            ListViewReviews(
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
