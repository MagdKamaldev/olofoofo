import 'package:circle_sync/features/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavItem extends StatelessWidget {
  final int index;
  final HomeCubit cubit;
  final String image;
  const BottomNavItem({super.key, required this.index, required this.cubit, required this.image});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: (){
          cubit.changeScreen(index);
        },
        child: SvgPicture.asset(image,height: 23.h,width: 23.w,),);
  }
}