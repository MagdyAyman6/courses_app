import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/arrow_back_icon.dart';

class OffersAppBar extends StatelessWidget {
  const OffersAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: const Icon(Icons.notifications_active_outlined),
        ),
        const Text(
          "Offers",
          style: Styles.textStyle16,
        ),
        const Icon(
          Icons.dehaze_rounded,
        ),
      ],
    );
  }
}
