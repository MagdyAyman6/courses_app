import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/arrow_back_icon.dart';
import '../../../../../../core/widgets/favourite_icon.dart';

class CourseAppBar extends StatelessWidget {
  const CourseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const ArrowBackIcon()),
        Text(
          "Course Name",
          style: Styles.textStyle16.copyWith(color: AppColor.kBlackColor),
        ),
        const FavouriteIcon(),
      ],
    );
  }
}
