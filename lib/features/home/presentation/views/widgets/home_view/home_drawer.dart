import 'package:course_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header Section
          DrawerHeader(
            padding: EdgeInsets.only(right: 67.w),
            decoration: const BoxDecoration(
              color: AppColor.kWhiteColor,
            ),
            child: Image.asset(
              AssetsData.logo,
              width: 204.w,
              height: 195.h,
            ),
          ),
          // Drawer Items
          _buildDrawerItem(
            icon: Icons.person_outline,
            text: 'Profile',
            onTap: () {},
          ),
          _buildDrawerItem(
            icon: Icons.language,
            text: 'English',
            onTap: () {},
            trailing: const Icon(Icons.keyboard_arrow_down,
                color: AppColor.kIconsColor),
          ),
          _buildDrawerItem(
            icon: Icons.shopping_cart_outlined,
            text: 'Courses',
            onTap: () {},
          ),
          _buildDrawerItem(
            icon: Icons.notifications_outlined,
            text: 'Notification',
            onTap: () {},
          ),
          _buildDrawerItem(
            icon: Icons.star_border,
            text: 'Rating',
            onTap: () {},
          ),
          _buildDrawerItem(
            icon: Icons.card_membership,
            text: 'Membership',
            onTap: () {
              GoRouter.of(context).push(AppRouter.kMembership);
            },
          ),
          _buildDrawerItem(
            icon: Icons.contact_mail_outlined,
            text: 'Contact Us',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required GestureTapCallback onTap,
    Widget? trailing,
  }) {
    return ListTile(
      leading: Icon(icon, color: AppColor.kIconsColor),
      title: Text(text, style: Styles.textStyle14),
      trailing: trailing,
      onTap: onTap,
    );
  }
}

