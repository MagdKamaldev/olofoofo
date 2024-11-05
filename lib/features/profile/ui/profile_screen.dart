import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/features/profile/data/repos/profile_repo.dart';
import 'package:circle_sync/features/profile/logic/cubit/profile_state.dart';
import 'package:circle_sync/features/profile/logic/cubit/proflie_cubit.dart';
import 'package:circle_sync/features/profile/ui/widgets/profile_loading_shimmer.dart';
import 'package:circle_sync/features/profile/ui/widgets/profile_posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) =>
          ProfileCubit(getIt<ProfileRepo>())..emitProfileStates(),
      child: SizedBox(
        width: size.width,
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              BlocBuilder<ProfileCubit, ProfileState>(
                buildWhen: (previous, current) =>
                    current is GetProfileSuccess ||
                    current is GetProfileError ||
                    current is GetProfileLoading,
                builder: (context, state) {
                  return state.maybeWhen(
                    getProfileSuccess: (userModel) =>  
                    SliverList(delegate: 
                    SliverChildListDelegate(
                        [
                      Padding(
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
                                    backgroundImage: NetworkImage(userModel
                                            .data!.users![0].profileImg ??
                                        "https://static.vecteezy.com/system/resources/thumbnails/005/129/844/small/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg"),
                                  ),
                                  horizontalSpace(size.width * 0.03),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${userModel.data!.users![0].firstName!} ${userModel.data!.users![0].lastName!}",
                                        style: TextStyles.font18Semibold,
                                      ),
                                      verticalSpace(size.height * 0.01),
                                      Text(
                                        userModel.data!.users![0].email ?? "",
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
                                "I’m a positive person. I love to travel and eat Always available for chat",
                                style: TextStyles.font12Medium,
                              ),
                              verticalSpace(size.height * 0.02),
                              AppButton(
                                onPressed: () {},
                                text: "Edit Profile",
                                isWhite: false,
                              ),
                              verticalSpace(size.height * 0.03),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          userModel.data!.users![0].posts!.length
                                              .toString(),
                                          style: TextStyles.font14semiBold,
                                        ),
                                        verticalSpace(size.height * 0.01),
                                        Text(
                                          "Posts",
                                          style: TextStyles.font14regular
                                              .copyWith(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                    height: size.height * 0.05,
                                    color: Colors.black,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          userModel.data!.users![0].friends!.length
                                              .toString(),
                                          style: TextStyles.font14semiBold,
                                        ),
                                        verticalSpace(size.height * 0.01),
                                        Text(
                                          "Friends",
                                          style: TextStyles.font14regular
                                              .copyWith(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        verticalSpace(size.height * 0.05),
                        ProfilePosts(posts: userModel.data!.users![0].posts!,
                        id: userModel.data!.users![0].id!,
                        firstName: userModel.data!.users![0].firstName!,
                        lastName: userModel.data!.users![0].lastName!,
                        profileImg: userModel.data!.users![0].profileImg
                        ),
                        ]
                    ),
                      ),
                    getProfilefailure: (apiErrorModel) => SliverToBoxAdapter(
                      child: Center(
                        child: Text(apiErrorModel.message.toString()),
                      ),
                    ),
                    getProfileLoading: () => const SliverToBoxAdapter(
                      child: ProfileShimmer(),
                    ),
                    orElse: () => const SliverToBoxAdapter(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
