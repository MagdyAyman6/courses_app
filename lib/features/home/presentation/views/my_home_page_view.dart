import 'package:course_app/features/home/presentation/views/widgets/home_view/my_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

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
