import 'package:circle_sync/core/routing/app_router.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/main_development.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OlofoofoApp extends StatelessWidget {
  final AppRouter appRouter;
  const OlofoofoApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
         onGenerateRoute: appRouter.generateRoute,
              initialRoute: isLoggedInUser? Routes.home: Routes.onBoarding1,
            )
      );
  }
}
