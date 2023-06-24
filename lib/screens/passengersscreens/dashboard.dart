import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:taxi_app/screens/driverscreens/dashboardscreen.dart';
import 'package:taxi_app/screens/passengersscreens/tripscreen.dart';

import '../../pages/driver/earning.dart';
import '../../pages/driver/home.dart';
import '../../pages/driver/profile.dart';
import '../../pages/driver/rating.dart';

class PassengerDashboard extends StatefulWidget {
  const PassengerDashboard({Key? key});

  @override
  State<PassengerDashboard> createState() => _PassengerDashboardState();
}

class _PassengerDashboardState extends State<PassengerDashboard> {
  final List<Map<String, dynamic>> drawerItems = [
    {
      'title': 'Home',
      'icon': Icons.home_outlined,
    },
    {
      'title': 'Your Trip',
      'icon': Icons.location_city_outlined,
    },
    {
      'title': 'Payment',
      'icon': Icons.location_on_outlined,
    },
    {
      'title': 'Notification',
      'icon': Icons.notifications_outlined,
    },
    {
      'title': 'Promos',
      'icon': Icons.local_offer_outlined,
    },
    {
      'title': 'Help',
      'icon': Icons.help_outline,
    },
    {
      'title': 'LogOut',
      'icon': Icons.logout,
    },
  ];
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
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/413885/pexels-photo-413885.jpeg?auto=compress&cs=tinysrgb&w=600',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'sheikh786@gmail.com',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: drawerItems.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = drawerItems[index];

                  return ListTile(
                    leading: Icon(item['icon'], color: Colors.green[900]),
                    title: Text(item['title']),
                    onTap: () {
                      // Handle drawer item tap
                      Navigator.pop(context); // Closes the drawer
                      switch (index) {
                        case 0:
                          setState(() {
                            this.index = index;
                          });
                          break;
                        case 1:
                          Get.to(
                              PassengerTripDetails()); // Replace with your screen
                          break;
                        case 2:
                          Get.to(
                              PassengerTripDetails()); // Replace with your screen
                          break;
                        case 3:
                          Get.to(
                              PassengerTripDetails()); // Replace with your screen
                          break;
                        case 4:
                          Get.to(
                              PassengerTripDetails()); // Replace with your screen
                          break;
                        case 5:
                          Get.to(
                              PassengerTripDetails()); // Replace with your screen
                          break;
                        case 6:
                          // Add logout logic
                          break;
                      }
                    },
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(16),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: Color.fromARGB(255, 32, 99, 36),
                  ),
                ),
                onPressed: () {
                  Get.to(() => DashboardScreen());
                },
                child: Text(
                  'Driver mode',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
