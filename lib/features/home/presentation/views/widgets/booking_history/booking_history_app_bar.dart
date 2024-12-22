import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/arrow_back_icon.dart';

class BookingHistoryAppBar extends StatelessWidget {
  const BookingHistoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const ArrowBackIcon(),
        ),
        const Text(
          "Booking History",
          style: Styles.textStyle16,
        ),
        const Icon(
          Icons.dehaze_rounded,
        ),
      ],
    );
  }
}
