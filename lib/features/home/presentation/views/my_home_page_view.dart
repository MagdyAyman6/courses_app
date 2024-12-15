import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/assets.dart';
import 'package:course_app/core/utils/styles.dart';
import 'package:course_app/features/home/presentation/views/widgets/my_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePageView extends StatefulWidget {
  const MyHomePageView({super.key});

  @override
  State<MyHomePageView> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyBottomNavigationBar(),
    );
  }
}

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
            icon: Icons.contact_mail_outlined,
            text: 'Contact Us',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  // Helper method to build drawer items
  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w),
      child: ListTile(
        leading: Icon(
            size: 24,
            icon, color: AppColor.kRateContainerColor),
        title: Text(
          text,
          style: Styles.textStyle16.copyWith(color: AppColor.kBlackColor),
        ),
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
