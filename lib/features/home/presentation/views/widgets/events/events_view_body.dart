import 'package:course_app/features/home/presentation/views/widgets/events/events_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'event_app_bar.dart';

class EventsViewBody extends StatelessWidget {
  const EventsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 60.h,
            right: 25.w,
            left: 18.w,
            bottom: 16.h,
          ),
          child: const EventAppBar(),
        ),
        const EventsGridView(),
      ],
    );
  }
}
