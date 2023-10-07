import 'package:daleel/core/database/cashe/cache_helper.dart';
import 'package:daleel/core/routes/app_routes.dart';
import 'package:daleel/core/services/service_locator.dart';
import 'package:daleel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Daleel.daleel());
}

class Daleel extends StatelessWidget {
  const Daleel.daleel({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router ,
    );
  }
}

