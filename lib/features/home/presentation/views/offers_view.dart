import 'package:course_app/features/home/presentation/views/widgets/offers/offers_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      body: OffersViewBody(),
    );
  }
}
