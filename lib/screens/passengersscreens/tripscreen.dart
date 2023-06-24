import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PassengerTripDetails extends StatelessWidget {
  const PassengerTripDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.close,
              color: Colors.red[900],
            )),
        title: Text(
          'Trip Historys',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Apr 9,2023 - 4:00 PM (Sunday)',
                                textScaleFactor: 1.2,
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            leading: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR46W9U3CXnDgu07sCM6lvNeKsJGBJv8SRO5A&usqp=CAU'),
                            title: Text("Sujan Shrestha (Driver)"),
                            subtitle: Row(
                              children: [
                                Icon(Icons.star, color: Colors.orange),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "online",
                                  style: TextStyle(
                                      color: Colors.green[800],
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            trailing: Column(
                              children: [
                                Text('Final Cost'),
                                Text(
                                  '50\$',
                                  textScaleFactor: 1.6,
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          SizedBox(
                            height: 1,
                          ),
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'TRIP',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.place),
                                title: Text(
                                    "Kathmandu, Darbarmarg TU university Path"),
                              ),
                              ListTile(
                                leading: Icon(Icons.directions_car),
                                title: Text("Pokhara, Kalanki chowk -15"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
