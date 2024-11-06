import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/constants.dart';
import 'package:circle_sync/core/helpers/shared_pref_helper.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/features/profile/ui/widgets/profile_loading_shimmer.dart';
import 'package:circle_sync/features/profile/ui/widgets/profile_posts.dart';
import 'package:circle_sync/features/user_porifle/data/repos/user_profile_repo.dart';
import 'package:circle_sync/features/user_porifle/logic/user_profile_cubit.dart';
import 'package:circle_sync/features/user_porifle/logic/user_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UserProfileScreen extends StatefulWidget {
  final String userId;
  const UserProfileScreen({super.key, required this.userId});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  String myId = "";
  bool isTextExpanded = false;

  void getMyId() async {
    myId = SharedPrefHelper.getString(SharedPrefKeys.userId);
  }

  @override
  void initState() {
    getMyId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyles.font18Semibold,
        ),
      ),
      body: SizedBox(
        width: size.width,
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              BlocProvider(
                create: (context) => UserProfileCubit(getIt<UserProfileRepo>())
                  ..getUserProfile(widget.userId),
                child: BlocBuilder<UserProfileCubit, UserProfileState>(
                  buildWhen: (previous, current) =>
                      current is UserProfileLoaded ||
                      current is UserProfileError ||
                      current is UserProfileLoading,
                  builder: (context, state) {
                    return state.maybeWhen(
                      userProfileLoaded: (userModel) => SliverList(
                        delegate: SliverChildListDelegate([
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 40.sp,
                                      backgroundImage: NetworkImage(userModel
                                              .data!.user![0].profileImg ??
                                          "https://static.vecteezy.com/system/resources/thumbnails/005/129/844/small/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg"),
                                    ),
                                    horizontalSpace(size.width * 0.03),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${userModel.data!.user![0].firstName!} ${userModel.data!.user![0].lastName!}",
                                          style: TextStyles.font18Semibold,
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.more_vert),
                                    )
                                  ],
                                ),
                                verticalSpace(size.height * 0.02),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isTextExpanded = !isTextExpanded;
                                          });
                                        },
                                        child: Text(
                                          "I’m a positive person. I love to travel and eat. Always available for chat",
                                          maxLines: isTextExpanded ? null : 3,
                                          overflow: isTextExpanded
                                              ? TextOverflow.visible
                                              : TextOverflow.ellipsis,
                                          style: TextStyles.font12Medium,
                                        ),
                                      ),
                                    ),
                                    horizontalSpace(size.width * 0.04),
                                    Container(
                                      width: 45.sp,
                                      height: 31.sp,
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        child: SvgPicture.asset(
                                            "assets/images/Chat.svg"),
                                      ),
                                    ),
                                    horizontalSpace(size.width * 0.02),
                                    Container(
                                      width: 90.sp,
                                      height: 31.sp,
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          color: ColorManager.primary,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        child: Text(
                                          userModel.data!.user![0].isFriend!
                                              ? userModel.data!.user![0]
                                                      .receivedRequest!
                                                  ? "Sent"
                                                  : "Freinds"
                                              : "Add",
                                          style: TextStyles.font12Medium
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                if (widget.userId == myId)
                                  verticalSpace(size.height * 0.02),
                                if (widget.userId == myId)
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
                                            userModel
                                                .data!.user![0].posts!.length
                                                .toString(),
                                            style: TextStyles.font14semiBold,
                                          ),
                                          verticalSpace(size.height * 0.01),
                                          Text(
                                            "Posts",
                                            style: TextStyles.font14regular
                                                .copyWith(
                                                    color: Colors.black54),
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
                          ProfilePosts(
                              posts: userModel.data!.user![0].posts!,
                              id: userModel.data!.user![0].id!,
                              firstName: userModel.data!.user![0].firstName!,
                              lastName: userModel.data!.user![0].lastName!,
                              profileImg: userModel.data!.user![0].profileImg),
                        ]),
                      ),
                      userProfileError: (apiErrorModel) => SliverToBoxAdapter(
                        child: Center(
                          child: Text(apiErrorModel.message.toString()),
                        ),
                      ),
                      userProfileLoading: () => const SliverToBoxAdapter(
                        child: ProfileShimmer(
                          isMine: false,
                        ),
                      ),
                      orElse: () => const SliverToBoxAdapter(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
