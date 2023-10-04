import 'package:daleel/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Daleel.daleel());
}

class Daleel extends StatelessWidget {
  const Daleel.daleel({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router ,
    );
  }
}

