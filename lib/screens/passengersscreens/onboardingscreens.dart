import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taxi_app/screens/passengersscreens/dashboard.dart';
import 'package:taxi_app/screens/selectmode.dart';

class PassengerScreen extends StatefulWidget {
  const PassengerScreen({super.key});

  @override
  State<PassengerScreen> createState() => _PassengerScreenState();
}

class _PassengerScreenState extends State<PassengerScreen> {
  List onBoardingData = [
    {
      'image': 'images/passanger1.png',
      'title':
          '"Reliable Rides at Your Fingertips,book a Ride, Experience Convenience!\n Journey in Style, Rejoice in Remarkable Offers!"',
    },
    {
      'image': 'images/passanger.png',
      'title':
          'Discover Delightful Destinations, Dive into Dreamy Discounts!,\nCreate Memories, Collect Unforgettable Travel Offers!',
    },
  ];

  PageController pageController = PageController();
  int currentPage = 0;

  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      // backgroundColor: Color(0xffDBDBE7),
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: onBoardingData.length,
            onPageChanged: onChanged,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(onBoardingData[index]['image']),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 140),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  onBoardingData[index]['title'],
                                  textScaleFactor: 1.2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black87
                                      // Your text style properties
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SmoothPageIndicator(
                controller: pageController,
                count: 2,
                effect: WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.black,
                ),
                onDotClicked: (index) => pageController.animateToPage(
                  index,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.bounceOut,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (currentPage == 0) ...[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context)
                          .primaryColor, // Use the primary color from the theme
                    ),
                    onPressed: () {
                      Get.offAll(ModeScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Back'),
                    ),
                  ),
                ],
                if (currentPage == (onBoardingData.length - 1)) ...[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context)
                          .primaryColor, // Use the primary color from the theme
                    ),
                    onPressed: () {
                      Get.offAll(() => PassengerDashboard());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Continue'),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
