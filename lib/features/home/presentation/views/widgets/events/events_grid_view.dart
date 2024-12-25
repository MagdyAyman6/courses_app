import 'package:course_app/features/home/presentation/views/widgets/events/event_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventsGridView extends StatelessWidget {
  const EventsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.only(left: 23.w, right: 24.w, bottom: 20.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          mainAxisSpacing: 8.h, //Space between columns
          crossAxisSpacing: 8.w, // Space between rows
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return const EventCard();
        },
      ),
    );
  }
}
