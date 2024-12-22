import 'package:course_app/features/home/presentation/views/widgets/booking_history/booking_history_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';

class BookingHistoryView extends StatelessWidget {
  const BookingHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      body: BookingHistoryViewBody(),
    );
  }
}
