import 'package:circle_sync/features/notifications/data/models/friend_requests_response.dart';
import 'package:circle_sync/features/notifications/data/repos/notifications_repo.dart';
import 'package:circle_sync/features/notifications/logic/cubit/notifications_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final NotificationRepo _notificationRepo;
  NotificationsCubit(this._notificationRepo)
      : super(const NotificationsState.initial());

      List<FriendRequest> requests = [];

  Future<void> getFriendRequests() async {
    emit(const NotificationsState.getFriendRequestsLoading());
    final result = await _notificationRepo.getFriendRequests();
    result.when(
      success: (data) {
        requests = data.data!.friendRequests!;
        emit(NotificationsState.getFriendRequestsLoaded(data));
      },
      failure: (error) {
        emit(NotificationsState.getFriendRequestsError(error));
      },
    );
  }

  Future<void> acceptRequest(String userId) async {
    emit(const NotificationsState.acceptRequestLoading());
    final result = await _notificationRepo.acceptRequest(userId);
    result.when(
      success: (_) {
        emit(const NotificationsState.acceptRequestLoaded());
      },
      failure: (error) {
        emit(NotificationsState.acceptRequestError(error));
      },
    );
  }

  Future<void> rejectRequest(String userId) async {
    emit(const NotificationsState.rejectRequestLoading());
    final result = await _notificationRepo.rejectRequest(userId);
    result.when(
      success: (_) {
        emit(const NotificationsState.rejectRequestLoaded());
      },
      failure: (error) {
        emit(NotificationsState.rejectRequestError(error));
      },
    );
  }
}
