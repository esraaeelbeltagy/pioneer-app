import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';

import 'config/routes/router.dart';
import 'config/theme/app_theme.dart';

class Pioneer extends StatelessWidget {
  const Pioneer({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          theme: appTheme(),
          debugShowCheckedModeBanner: false,
          title: AppStrings.appTitle,
          routerConfig: router,
        );
      },
    );
  }
}
