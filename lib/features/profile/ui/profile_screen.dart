import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "My Profile",
                style: TextStyles.font18Semibold,
              ),
              verticalSpace(size.height * 0.02),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40.sp,
                    backgroundImage: NetworkImage(
                        "https://static.vecteezy.com/system/resources/thumbnails/005/129/844/small/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg"),
                  ),
                  horizontalSpace(size.width * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "John Doe",
                        style: TextStyles.font18Semibold,
                      ),
                      verticalSpace(size.height * 0.01),
                      const Text(
                        "Abeokuta, Ogun",
                        style: TextStyles.font12semiBold,
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings_outlined),
                  )
                ],
              ),
              verticalSpace(size.height * 0.02),
              const Text(
                        "I’m a postive person. I love to travel and eat Always available for chat",
                        style: TextStyles.font12Medium,
                      ),
              verticalSpace(size.height * 0.02),
              AppButton(onPressed: () {}, text: "Edit Profile", isWhite: false)
            ],
          ),
        ),
      ),
    );
  }
}
