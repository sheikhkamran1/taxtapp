import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../pages/driver/earning.dart';
import '../../pages/driver/home.dart';
import '../../pages/driver/profile.dart';
import '../../pages/driver/rating.dart';
import '../../pages/passenger/profile.dart';

class PassengerDashboardScreen extends StatefulWidget {
  const PassengerDashboardScreen({Key? key});

  @override
  State<PassengerDashboardScreen> createState() =>
      _PassengerDashboardScreenState();
}

class _PassengerDashboardScreenState extends State<PassengerDashboardScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green[900],
        unselectedItemColor: Colors.grey[700],
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: 'Bookings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.help_outline_sharp), label: 'Help'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      body: index == 0
          ? HomeScreen()
          : index == 1
              ? EarningScreen()
              : index == 2
                  ? RatingScreen()
                  : ProfileScreen(),
    );
  }
}
