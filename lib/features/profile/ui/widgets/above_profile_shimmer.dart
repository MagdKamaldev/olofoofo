import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboveProfileShimmer extends StatelessWidget {
  const AboveProfileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Shimmer for the title "My Profile"
            const Text(
              "My Profile",
              style: TextStyles.font18Semibold,
            ),
            SizedBox(height: size.height * 0.02),

            // Shimmer for profile row
            Row(
              children: [
                // Profile picture shimmer
                CircleAvatar(
                  radius: 40.sp,
                  backgroundColor: Colors.grey[300],
                ),
                SizedBox(width: size.width * 0.03),

                // Shimmer for name and email
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 20,
                      color: Colors.grey[300],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Container(
                      width: 100,
                      height: 15,
                      color: Colors.grey[300],
                    ),
                  ],
                ),

                const Spacer(),

                // Shimmer for settings icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_outlined),
                )
              ],
            ),
            SizedBox(height: size.height * 0.02),

            // Shimmer for bio
            Container(
              width: double.infinity,
              height: 15,
              color: Colors.grey[300],
            ),
            SizedBox(height: size.height * 0.02),

            // Shimmer for "Edit Profile" button
            AppButton(
              onPressed: () {},
              text: "Edit Profile",
              isWhite: false,
            ),
            SizedBox(height: size.height * 0.03),

            // Shimmer for posts and friends counters
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Shimmer for posts count
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 20,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Container(
                        width: 40,
                        height: 15,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                ),

                // Divider shimmer
                Container(
                  width: 1,
                  height: size.height * 0.05,
                  color: Colors.grey[300],
                ),

                // Shimmer for friends count
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 20,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Container(
                        width: 40,
                        height: 15,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
