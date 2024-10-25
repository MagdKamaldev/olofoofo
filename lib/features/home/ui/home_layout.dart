import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/features/home/cubit/home_cubit.dart';
import 'package:circle_sync/features/home/ui/app_bottom_nav.dart';
import 'package:circle_sync/features/home/ui/widgets/story_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) => Scaffold(
        body: context
            .read<HomeCubit>()
            .screens[context.read<HomeCubit>().currentIndex],
        bottomNavigationBar: AppBottomNav(cubit: context
            .read<HomeCubit>()),
      ),
    );
  }
}


