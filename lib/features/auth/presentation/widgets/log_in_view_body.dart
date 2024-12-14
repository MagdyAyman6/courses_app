import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/build_logo_widget.dart';
import 'log_in_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            40.verticalSpace,
            const BuildLogoWidget(),
            24.verticalSpace,
            const LoginForm(),
          ],
        ),
      ),
    );
  }
}
