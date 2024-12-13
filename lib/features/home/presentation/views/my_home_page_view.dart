import 'package:course_app/features/home/presentation/views/widgets/my_bottom_navigation_bar.dart';
import 'package:course_app/features/home/presentation/views/widgets/my_home_page_view_body.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    MyHomePageViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: selectedIndex,
        onTab: (index) {
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
      ),
      body: pages[selectedIndex],
    );
  }
}
