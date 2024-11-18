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
  bool isRequestRecieved = false;
  bool isRemovingFriend = false;
  bool isTextExpanded = false;

  void getMyId() async {
    myId = await SharedPrefHelper.getString(SharedPrefKeys.userId);
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
                      userProfileLoaded: (userModel) {
                        return SliverList(
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
                                      if (widget.userId != myId) const Spacer(),
                                      if (widget.userId != myId)
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
                                      if (widget.userId != myId)
                                        horizontalSpace(size.width * 0.04),
                                      if (widget.userId != myId)
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
                                      if (widget.userId != myId)
                                        horizontalSpace(size.width * 0.02),
                                      if (widget.userId != myId)
                                        Container(
                                          width: 95.sp,
                                          height: 31.sp,
                                          decoration: BoxDecoration(
                                              border: Border.all(),
                                              color: ColorManager.primary,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: MaterialButton(
                                            onPressed: () {
                                              if (context
                                                      .read<UserProfileCubit>()
                                                      .freindShipStatus ==
                                                  "Add") {
                                                context
                                                    .read<UserProfileCubit>()
                                                    .addFriend(widget.userId);
                                                setState(() {
                                                  context
                                                      .read<UserProfileCubit>()
                                                      .freindShipStatus = "Sent";
                                                });
                                              } else if (context
                                                      .read<UserProfileCubit>()
                                                      .freindShipStatus ==
                                                  "Recieved") {
                                                setState(() {
                                                  isRequestRecieved =
                                                      !isRequestRecieved;
                                                });
                                              }else if(context
                                                      .read<UserProfileCubit>()
                                                      .freindShipStatus ==
                                                  "Freinds"){
                                                    setState(() {
                                                      isRemovingFriend = ! isRemovingFriend;
                                                    });
                                                  }
                                            },
                                            child: Text(
                                              context
                                                  .read<UserProfileCubit>()
                                                  .freindShipStatus,
                                              style: TextStyles.font12Medium
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  if (isRequestRecieved)
                                    verticalSpace(size.height * 0.02),
                                  if (isRequestRecieved)
                                    SizedBox(
                                      width: size.width * 0.8,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: AppButton(
                                              onPressed: () {
                                                context
                                                    .read<UserProfileCubit>()
                                                    .acceptRequest(widget.userId);
                                                setState(() {
                                                  isRequestRecieved = false;
                                                  context
                                                      .read<UserProfileCubit>()
                                                      .freindShipStatus = "Freinds";
                                                });
                                              },
                                              text: "Accept",
                                              isWhite: false,
                                            ),
                                          ),
                                          horizontalSpace(size.width * 0.07),
                                          Expanded(
                                            child: AppButton(
                                              onPressed: () {
                                                context
                                                    .read<UserProfileCubit>()
                                                    .rejectRequest(widget.userId);
                                                setState(() {
                                                  isRequestRecieved = false;
                                                  context
                                                      .read<UserProfileCubit>()
                                                      .freindShipStatus = "Add";
                                                });
                                              },
                                              text: "Decline",
                                              isWhite: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (isRemovingFriend)
                                    verticalSpace(size.height * 0.02),
                                    if(isRemovingFriend)
                                    Text("Are you Sure you want to remove ${userModel.data!.user![0].firstName} from friends ?",
                                    style: TextStyles.font16Medium,
                                    ),
                                     if (isRemovingFriend)
                                    verticalSpace(size.height * 0.02),
                                  if (isRemovingFriend)
                                    SizedBox(
                                      width: size.width * 0.8,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: AppButton(
                                              onPressed: () {
                                                 context
                                                    .read<UserProfileCubit>()
                                                    .deleteFriend(widget.userId);
                                                setState(() {
                                                  context
                                                      .read<UserProfileCubit>()
                                                      .freindShipStatus = "Add";
                                                      isRemovingFriend = false;
                                                });
                                              },
                                              text: "Yes",
                                              isWhite: false,
                                            ),
                                          ),
                                          horizontalSpace(size.width * 0.07),
                                          Expanded(
                                            child: AppButton(
                                              onPressed: () {
                                                setState(() {
                                                 isRemovingFriend = !isRemovingFriend;
                                                });
                                              },
                                              text: "Cancel",
                                              isWhite: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (isRemovingFriend)
                                    verticalSpace(size.height * 0.02),
                                  if (widget.userId == myId)
                                    verticalSpace(size.height * 0.03),
                                  if (widget.userId == myId)
                                    AppButton(
                                      onPressed: () {},
                                      text: "Edit Profile",
                                      isWhite: false,
                                    ),
                                  verticalSpace(size.height * 0.03),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                profileImg:
                                    userModel.data!.user![0].profileImg),
                          ]),
                        );
                      },
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
