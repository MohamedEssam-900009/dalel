import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/data/cache/cache_helper.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        CacheHelper().getData(key: 'isOnBoardingVisited') ?? false;
    if (isOnBoardingVisited == true) {
      delayNavigation(context, '/signUp');
    } else {
      delayNavigation(context, '/onBoarding');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyle.pacifico400style64,
        ),
      ),
    );
  }
}

void delayNavigation(context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    customReplacementNavigate(context, path);
  });
}
