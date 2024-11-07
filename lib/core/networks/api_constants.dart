class ApiConstants {
  static const String apiBASEURL = "http://192.168.1.74:8080/api/v1/";
  static const String signUp = "auth/signup";
  static const String login = "auth/login";
  static const String getMyProfile = "users/me";
  static const String getUser = "users/{userId}";
  static const String addFriend = "users/{userId}/add";
  static const String acceptRequest = "users/{userId}/accept";
  static const String rejectRequest = "users/{userId}/reject";
}