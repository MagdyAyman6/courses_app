import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/core/utils/assets.dart';
import 'package:course_app/features/home/presentation/views/widgets/my_home_page_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  // PersistentTabController to manage the navigation bar
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const MyHomePageViewBody(),
      const Center(child: Text("Book Screen", style: TextStyle(fontSize: 20))),
      const Center(
          child: Text("Course Screen", style: TextStyle(fontSize: 20))),
      const Center(
          child: Text("Offers Screen", style: TextStyle(fontSize: 20))),
      const Center(child: Text("More Screen", style: TextStyle(fontSize: 20))),
    ];
  }

  // Define the items for the navigation bar
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        iconSize: 24,
        icon: const Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: AppColor.kSelectedIconColor,
        inactiveColorPrimary: AppColor.kUnselectedIconColor,
      ),
      PersistentBottomNavBarItem(
        iconSize: 24,
        icon: const Icon(Icons.edit),
        title: ("Book"),
        activeColorPrimary: AppColor.kSelectedIconColor,
        inactiveColorPrimary: AppColor.kUnselectedIconColor,
      ),
      PersistentBottomNavBarItem(
        iconSize: 50,
        activeColorPrimary: AppColor.kSelectedIconColor.withOpacity(0.59),
        inactiveColorPrimary: AppColor.kUnselectedIconColor,
        icon: Image.asset(
          AssetsData.courseNavIcon,
        ),
      ),
      PersistentBottomNavBarItem(
        iconSize: 24,
        icon: const Icon(
          Icons.local_offer,
        ),
        title: ("Offers"),
        activeColorPrimary: AppColor.kSelectedIconColor,
        inactiveColorPrimary: AppColor.kUnselectedIconColor,
      ),
      PersistentBottomNavBarItem(
        iconSize: 24,
        icon: const Icon(Icons.menu),
        title: ("More"),
        activeColorPrimary: AppColor.kSelectedIconColor,
        inactiveColorPrimary: AppColor.kUnselectedIconColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      padding: EdgeInsets.only(bottom: 8.h, top: 5.h),
      navBarHeight: 64.h,
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      backgroundColor: Colors.white,
      // Default color for navigation bar
      navBarStyle: NavBarStyle.style15,
      // Style for the navigation bar
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
    );
  }
}
