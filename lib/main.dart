import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_app/screens/driverscreens/onboardingscreen.dart';
import 'package:taxi_app/screens/passengersscreens/dashboard.dart';
import 'package:taxi_app/screens/splashscreen.dart';

import 'screens/driverscreens/dashboardscreen.dart';
import 'screens/passengersscreens/tripscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
        primaryColor: Colors.green[900],
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
              color: Colors.black), // Set the desired color for the drawer icon
        ),
        // appBarTheme: AppBarTheme.of(context).copyWith(
        //   backgroundColor: Colors.white,
        //   iconTheme: IconTheme.of(context).copyWith(color: Colors.black)),
      ),

      // home: const SplashScreen(),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/onboarding": (context) => OnboardingScreen(),
        "/passengertripdetails": (context) => PassengerTripDetails(),
        "/PassengerDashboard": (context) => PassengerDashboard(),
        "/splash": (context) => const SplashScreen(),
        "/dashboard": (context) => const DashboardScreen(),
      },
    );
  }
}