// ignore_for_file: depend_on_referenced_packages
import 'package:circle_sync/core/networks/api_error_model.dart';
import 'package:circle_sync/features/notifications/data/models/friend_requests_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'notifications_state.freezed.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = _Initial;
  //get friend requests
  const factory NotificationsState.getFriendRequestsLoading() = GetFriendRequestsLoading; 
  const factory NotificationsState.getFriendRequestsLoaded(FriendRequestsResponse friendRequestsResponse) = GetFriendRequestsLoaded;
  const factory NotificationsState.getFriendRequestsError(ApiErrorModel apuErrorModel) = GetFriendRequestsError;
  //accept request
  const factory NotificationsState.acceptRequestLoading() = AcceptRequestLoading;
  const factory NotificationsState.acceptRequestLoaded() = AcceptRequestLoaded;
  const factory NotificationsState.acceptRequestError(ApiErrorModel apiErrorModel) = AcceptRequestError;
  //reject request
  const factory NotificationsState.rejectRequestLoading() = RejectRequestLoading;
  const factory NotificationsState.rejectRequestLoaded() = RejectRequestLoaded;
  const factory NotificationsState.rejectRequestError(ApiErrorModel apiErrorModel) = RejectRequestError;
}
