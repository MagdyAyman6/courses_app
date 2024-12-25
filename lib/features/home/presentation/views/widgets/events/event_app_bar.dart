import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class EventAppBar extends StatelessWidget {
  const EventAppBar({super.key});

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
          "Events",
          style: Styles.textStyle16,
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.dehaze_rounded,
          ),
        ),
      ],
    );
  }
}
