
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/features/home/ui/widgets/post_shimmer.dart';
import 'package:circle_sync/features/profile/ui/widgets/above_profile_shimmer.dart';
import 'package:flutter/material.dart';

class ProfileShimmer extends StatelessWidget {
  const ProfileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AboveProfileShimmer(),
            verticalSpace(16),
            for (int i = 0; i < 3; i++) const PostShimmer(),
          ],
        ),
    );
  }
}