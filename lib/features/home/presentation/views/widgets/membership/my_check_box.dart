import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: isChecked,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
        ),
        side: const BorderSide(
          color: AppColor.kYellowColor,
        ),
        activeColor: isChecked ? AppColor.kIconsColor : AppColor.kWhiteColor,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        });
  }
}
