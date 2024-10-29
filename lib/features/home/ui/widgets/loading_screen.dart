import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/features/home/ui/widgets/post_shimmer.dart';
import 'package:circle_sync/features/home/ui/widgets/story_shimmer.dart';
import 'package:flutter/material.dart';

class ShimmerScreen extends StatelessWidget {
  const ShimmerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(16),
            const StoryShimmer(), // Shimmer for stories
            verticalSpace(16),
            // Repeat the post shimmer a few times to simulate loading multiple posts
            for (int i = 0; i < 3; i++) const PostShimmer(),
          ],
        ),
    );
  }
}