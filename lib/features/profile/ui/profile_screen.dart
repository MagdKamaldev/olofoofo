import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/features/profile/data/models/profile_response_model.dart';
import 'package:circle_sync/features/profile/logic/cubit/profile_state.dart';
import 'package:circle_sync/features/profile/logic/cubit/proflie_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>()..emitProfileStates(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
          buildWhen: (previous, current) => current is GetProfileSuccess,
          builder: (context, state) {
            if (context.read<ProfileCubit>().user != null &&
                state is! GetProfileLoading) {
              ProfileResponseModel user = context.read<ProfileCubit>().user!;
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: NetworkImage(
                              user.user!.profileImg ?? ""), // Placeholder image
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: ColorManager.primary,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.edit,
                                  color: Colors.white, size: 20),
                              onPressed: () {
                                // Logic to change profile picture
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(size.height * 0.025),
                    Text(
                      "${user.user?.firstName} ${user.user?.lastName}",
                    //  style: TextStyles.heading1,
                    ),
                    verticalSpace(size.height * 0.0225),
                    AppButton(
                      onPressed: () {}, 
                      isWhite: false,
                      text: "Save Changes"),
                    verticalSpace(size.height * 0.04),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: ColorManager.primary,
                    ),
                    verticalSpace(size.height * 0.04),
                    // ListView.separated(
                    //   physics:
                    //       NeverScrollableScrollPhysics(), // Disables scrolling for ListView
                    //   shrinkWrap:
                    //       true, // Allows ListView to size itself based on children
                    //   itemBuilder: (context, index) => PostItem(
                    //     userName: user.user!.firstName!,
                    //     imageUrl: user.user!.profileImg ?? "",
                    //     postContent: user.user!.posts![index].content!,
                    //     likesCount: user.user!.posts![index].likesCount!,
                    //     commentsCount: user.user!.posts![index].commentsCount!,
                    //   ),
                    //   separatorBuilder: (context, index) => verticalSpace(20),
                    //   itemCount: user.user!.posts!.length,
                    // ),
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
