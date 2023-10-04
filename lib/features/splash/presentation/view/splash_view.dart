import 'package:flutter/material.dart';
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.lightBlueAccent, Colors.white])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 70.0, bottom: 20.0),
              child: const Text("Hello World", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Icon(Icons.bubble_chart, color: Colors.white, size: 130.0,),
            ),
          ],
        ),
      ),
    );
  }
}