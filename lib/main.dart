import 'package:daleel/app/daleel_app.dart';
import 'package:daleel/core/database/cashe/cache_helper.dart';
import 'package:daleel/core/functions/check_state_changes.dart';
import 'package:daleel/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  authStateChanges();
  await getIt<CacheHelper>().init();
  runApp(const Daleel());
}

