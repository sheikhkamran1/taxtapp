import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_app/screens/selectmode.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  checkAuth() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(const ModeScreen());
    });
  }

  @override
  void initState() {
    super.initState();
    checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(66, 19, 18, 18),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Taxo",
              textScaleFactor: 4,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
