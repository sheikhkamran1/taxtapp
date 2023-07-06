import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:taxi_app/screens/driverscreens/onboardingscreen.dart';
import '../../screens/driverscreens/dashboardscreen.dart';
import '../../screens/passengersscreens/tripscreen.dart';

class PassengerProfileScreen extends StatelessWidget {
  final List<Map<String, dynamic>> drawerItems = [
    {
      'title': 'Home',
      'icon': Icons.home_outlined,
    },
    {
      'title': 'Your Trips',
      'icon': Icons.location_city_outlined,
    },
    {
      'title': 'Payment',
      'icon': Icons.location_on_outlined,
    },
    {
      'title': 'Notifications',
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
      'title': 'Log Out',
      'icon': Icons.logout,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/413885/pexels-photo-413885.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'sheikh786@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: drawerItems.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = drawerItems[index];

                  return ListTile(
                    leading: Icon(
                      item['icon'],
                      color: Colors.green[900],
                    ),
                    title: Text(item['title']),
                    onTap: () {
                      // Handle drawer item tap
                      switch (index) {
                        case 0:
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
           const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 32, 99, 36),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Get.to(() => DriverOnboardingScreen());
              },
              child:const Padding(
                padding:  EdgeInsets.all(16.0),
                child: Text(
                  'Driver Mode',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
