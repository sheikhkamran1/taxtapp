import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:taxi_app/pages/passenger/profile.dart';
import 'package:taxi_app/screens/passengersscreens/dashboardscreen.dart';

import '../../pages/driver/earning.dart';
import '../../pages/driver/home.dart';
import '../../pages/driver/profile.dart';
import '../../pages/driver/rating.dart';

class DriverDashboardScreen extends StatefulWidget {
  const DriverDashboardScreen({Key? key});

  @override
  State<DriverDashboardScreen> createState() => _DriverDashboardScreenState();
}

class _DriverDashboardScreenState extends State<DriverDashboardScreen> {
  final List<Map<String, dynamic>> drawerItems = [
    {
      'title': 'Home',
      'icon': Icons.home_outlined,
    },
    {
      'title': 'City-to-City',
      'icon': Icons.location_city_outlined,
    },
    {
      'title': 'Cities',
      'icon': Icons.location_on_outlined,
    },
    {
      'title': 'FAQ',
      'icon': Icons.question_answer_outlined,
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
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star_half, color: Colors.orange),
                      Icon(Icons.star_border, color: Colors.orange),
                      SizedBox(width: 5),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
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
                      // Add any logic to handle navigation or other actions
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
                  Get.to(() => PassengerDashboardScreen());
                },
                child: Text(
                  'Passenger mode',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
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
              icon: Icon(Icons.credit_card), label: 'Earnings'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Ratings'),
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
