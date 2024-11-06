
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/features/home/ui/widgets/post_shimmer.dart';
import 'package:circle_sync/features/profile/ui/widgets/above_profile_shimmer.dart';
import 'package:flutter/material.dart';

class ProfileShimmer extends StatelessWidget {
  final bool isMine;
  const ProfileShimmer({super.key, required this.isMine});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboveProfileShimmer(isMine: isMine,),
            verticalSpace(16),
            for (int i = 0; i < 3; i++) const PostShimmer(),
          ],
        ),
    );
  }
}