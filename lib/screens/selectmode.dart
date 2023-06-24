import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'driverscreens/onboardingscreen.dart';
import 'passengersscreens/onboardingscreens.dart';

class ModeScreen extends StatelessWidget {
  const ModeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to red
      body: LayoutBuilder(
        builder: (context, constraints) {
          double logoSize = constraints.maxWidth * 0.2;
          double screenHeight = MediaQuery.of(context).size.height;

          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: logoSize,
                    height: logoSize,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'T',
                          style: TextStyle(
                            fontSize: logoSize * 0.4,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          'axo',
                          style: TextStyle(
                            fontSize: logoSize * 0.2,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.1),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('images/mode.jpg'),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                ),
                                onPressed: () {
                                  Get.offAll(() => const OnboardingScreen());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text('As a Driver'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                ),
                                onPressed: () {
                                  Get.offAll(() => const PassengerScreen());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text('As a Passenger'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
