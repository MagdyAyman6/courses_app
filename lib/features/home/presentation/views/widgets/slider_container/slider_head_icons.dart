import 'package:flutter/material.dart';

class SliderHeadIcons extends StatelessWidget {
  const SliderHeadIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.notes_outlined,
          size: 24,
          color: Colors.white,
        ),
        Icon(
          Icons.notifications_rounded,
          size: 24,
          color: Colors.white,
        ),
      ],
    );
  }
}
