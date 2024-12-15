import 'package:flutter/material.dart';

class SliderHeadIcons extends StatefulWidget {
  const SliderHeadIcons({super.key});

  @override
  State<SliderHeadIcons> createState() => _SliderHeadIconsState();
}

class _SliderHeadIconsState extends State<SliderHeadIcons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: const Icon(
            Icons.notes_outlined,
            size: 24,
            color: Colors.white,
          ),
        ),
        const Icon(
          Icons.notifications_rounded,
          size: 24,
          color: Colors.white,
        ),
      ],
    );
  }
}
