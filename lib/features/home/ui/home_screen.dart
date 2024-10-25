import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/features/home/ui/posts.dart';
import 'package:circle_sync/features/home/ui/stories.dart';
import 'package:circle_sync/features/home/ui/widgets/post_item.dart';
import 'package:circle_sync/features/home/ui/widgets/story_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding:EdgeInsets.only(top: 20.0), // Adjust padding as needed
              child: Stories(),
            ),
          ),
           SliverToBoxAdapter(
            child:  verticalSpace(20), // Space between Stories and Posts
          ),
         const Posts()
        ],
      ),
    );
  }
}