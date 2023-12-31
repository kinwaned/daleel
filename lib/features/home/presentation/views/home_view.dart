import 'package:daleel/core/functions/custom_navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            FirebaseAuth.instance.signOut();
            customReplacementNavigation(context, '/SignIn');

          }, icon: const Icon(Icons.logout),),
        ],
      ),
      body: const Center(
          child: Text(
        'Home View',
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
