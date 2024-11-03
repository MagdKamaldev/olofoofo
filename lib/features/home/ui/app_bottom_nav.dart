import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:circle_sync/features/home/ui/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomNav extends StatelessWidget {
  final HomeCubit cubit;
  const AppBottomNav({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 35.w),
        child: Row(children: [
            BottomNavItem(index: 0, cubit: cubit, image: cubit.currentIndex == 0 ? "assets/images/Home_filled.svg" : "assets/images/Home.svg"),
            const Spacer(),
            BottomNavItem(index: 1, cubit: cubit, image: cubit.currentIndex == 1 ? "assets/images/Notification_filled.svg" : "assets/images/Notification.svg"),
            const Spacer(),
            BottomNavItem(index: 2, cubit: cubit, image: cubit.currentIndex == 2 ? "assets/images/Plus_filled.svg" : "assets/images/Plus.svg"),
            const Spacer(),
            BottomNavItem(index: 3, cubit: cubit, image: cubit.currentIndex == 3 ? "assets/images/Chat_filled.svg" : "assets/images/Chat.svg"),
            const Spacer(),
            BottomNavItem(index: 4, cubit: cubit, image: cubit.currentIndex == 4 ? "assets/images/Profile_filled.svg" : "assets/images/Profile.svg"),
            ],),
      ));
  }
}