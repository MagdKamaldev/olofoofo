class ApiConstants {
  static const String apiBASEURL = "http://192.168.1.74:8080/api/v1/";
  static const String signUp = "auth/signup";
  static const String login = "auth/login";
  static const String profile = "users/me";
  static const String getUser = "users/{userId}";
  static const String addFriend = "users/{userId}/add";
  static const String deleteFriend = "users/{userId}/delete";
  static const String acceptRequest = "users/{userId}/accept";
  static const String rejectRequest = "users/{userId}/reject";
  static const String cancelFriendRequest = "users/{userId}/cancel";
  static const String getFriendRequests = "users/me/friend-requests";
  static const String uploadProfileImage = "users/profile-img";
}