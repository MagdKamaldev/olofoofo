import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:circle_sync/features/home/logic/home_state.dart';
import 'package:circle_sync/features/home/ui/posts.dart';
import 'package:circle_sync/features/home/ui/widgets/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(getIt())..getPosts(),
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (previous, current) =>
                  current is PostsError ||
                  current is PostsLoaded ||
                  current is PostsLoading ||
                  current is ChangeScreen,
              builder: (context, state) {            
                return state.maybeWhen(
                  postsLoading: () => const SliverToBoxAdapter(
                    child: ShimmerScreen(),
                  ),
                  postsLoaded: (posts) => SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        verticalSpace(20),
                        SvgPicture.asset(
                          'assets/images/logo.svg',
                          height: 50,
                        ),
                        verticalSpace(20),
                        Posts(posts: posts),
                      ],
                    ),
                  ),
                  postsError: (errorHandle) => const SliverToBoxAdapter(
                    child: Text('Posts Error'),
                  ),
                  orElse: () => const SliverToBoxAdapter(
                    child: Text('Initial'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
