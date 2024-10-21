
import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/constants.dart';
import 'package:circle_sync/core/helpers/shared_pref_helper.dart';
import 'package:circle_sync/core/routing/app_router.dart';
import 'package:circle_sync/olofoofo_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bool isLoggedInUser = false;

checkIfLoggedIn() async {
  // Check if user is logged in
  String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (userToken != null && userToken.isNotEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setUpGetIt();
  await checkIfLoggedIn();
  runApp(OlofoofoApp(
    appRouter: AppRouter(),
  ));
}
