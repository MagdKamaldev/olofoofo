import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/features/notifications/data/repos/notifications_repo.dart';
import 'package:circle_sync/features/notifications/logic/cubit/notifications_cubit.dart';
import 'package:circle_sync/features/notifications/logic/cubit/notifications_state.dart';
import 'package:circle_sync/features/notifications/ui/widgets/friend_request_item.dart';
import 'package:circle_sync/features/notifications/ui/widgets/notification_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) =>
          NotificationsCubit(getIt<NotificationRepo>())..getFriendRequests(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notifications',
            style: TextStyles.font18Semibold,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Always display 'Friend Requests' text
              const SizedBox(height: 20),
              const Text(
                'Friend Requests',
                style: TextStyles.font14Medium,
              ),
              const SizedBox(height: 10),

              // BlocBuilder to handle the state of friend requests
              Expanded(
                child: BlocBuilder<NotificationsCubit, NotificationsState>(
                  buildWhen: (previous, current) =>
                      current is GetFriendRequestsLoaded ||
                      current is GetFriendRequestsLoading ||
                      current is GetFriendRequestsError,
                  builder: (context, state) {
                    return state.maybeWhen(
                      getFriendRequestsLoaded: (friendRequests) {
                        if (friendRequests.data!.friendRequests!.isEmpty) {
                          return const Center(
                            child: Text(
                              'No friend requests',
                              style: TextStyles.font14Medium,
                            ),
                          );
                        }
                        return ListView.separated(
                          separatorBuilder: (context, index) =>
                              verticalSpace(size.height * 0.03),
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          shrinkWrap: true,
                          itemCount: friendRequests.data!.friendRequests!.length,
                          itemBuilder: (context, index) {
                            final request =  context.read<NotificationsCubit>().requests[index];
                            return FriendRequestItem(
                              requestId: request.id!,
                              requesterName: "${request.firstName!} ${request.lastName!}",
                              profileImage: request.profileImg,
                              onAccept: () {
                                context
                                    .read<NotificationsCubit>()
                                    .acceptRequest(request.id!);
                                    setState(() {
                                      context
                                          .read<NotificationsCubit>()
                                          .requests.removeWhere((element) => element.id == request.id);
                                    });
                                    
                              },
                              onDecline: () {
                                context
                                    .read<NotificationsCubit>()
                                    .rejectRequest(request.id!);
                                    setState(() {
                                      context
                                          .read<NotificationsCubit>()
                                          .requests.removeWhere((element) => element.id == request.id);
                                    });

                              },
                            );
                          },
                        );
                      },
                      getFriendRequestsError: (error) => Center(
                        child: Text(
                          error.message ?? "Error",
                          style: TextStyles.font14Medium.copyWith(color: Colors.red),
                        ),
                      ),
                      getFriendRequestsLoading: () => ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const NotificationShimmer();
                        },
                      ),
                      orElse: () => const Center(
                        child: Text(
                          'Loading notifications...',
                          style: TextStyles.font14Medium,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}