import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/arrow_back_icon.dart';
import '../../../../../../core/widgets/favourite_icon.dart';

class EventsDetailsAppBar extends StatelessWidget {
  const EventsDetailsAppBar({super.key});

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
        const Text("Events", style: Styles.textStyle16),
        const FavouriteIcon(),
      ],
    );
  }
}
