import 'package:daleel/core/database/cashe/cache_helper.dart';
import 'package:daleel/core/functions/custom_navigation.dart';
import 'package:daleel/core/services/service_locator.dart';
import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/core/utils/app_text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
   bool isOnBoardingVisited = getIt<CacheHelper>().getData(key: 'isOnBoardingVisited')?? false;
   if(isOnBoardingVisited == true){
     FirebaseAuth.instance.currentUser == null ? delayedNavigation(context, '/SignIn') : delayedNavigation(context, '/home') ;
   }else{
     delayedNavigation(context, '/onBoarding');
   }

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}


void delayedNavigation(context, path) {
  Future.delayed(const Duration(seconds: 2),
          () => customReplacementNavigation(context, path),);
}
