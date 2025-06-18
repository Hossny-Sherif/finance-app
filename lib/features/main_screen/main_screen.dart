import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/features/home_page/home_page_screen.dart';
import 'package:finance_ui/features/statistics/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomePageScreen(),
    const StatisticsScreen(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          elevation: 1,
          selectedItemColor: AppColors.primaryColor,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30.sp,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.manage_history,
                  size: 30.sp,
                ),
                label: "Statistics"),
            BottomNavigationBarItem(
                icon: Container(
                  width: 48.sp,
                  height: 48.sp,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.card_membership_outlined,
                  size: 30.sp,
                ),
                label: "My Card"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 30.sp,
                ),
                label: "Profile"),
          ],
        ),
      ),
    );
  }
}
