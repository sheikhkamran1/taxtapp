import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Colors.red,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.bus_alert,
                    color: Colors.red,
                  ),
                  child: Text(
                    'Bus Tickets',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.train_rounded,
                    color: Colors.black,
                  ),
                  text: 'Train Tickets',
                ),
                Tab(
                  icon: Icon(
                    Icons.flight,
                    color: Colors.black,
                  ),
                  text: 'Flight Tickets',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.white,
                child: Image.network(
                    'https://images.pexels.com/photos/5794208/pexels-photo-5794208.jpeg?auto=compress&cs=tinysrgb&w=400'),
              ),
              Container(
                color: Colors.white,
                child: Image.network(
                    'https://images.pexels.com/photos/5794208/pexels-photo-5794208.jpeg?auto=compress&cs=tinysrgb&w=400'),
              ),
              Container(
                color: Colors.white,
                child: Image.network(
                    'https://images.pexels.com/photos/5794208/pexels-photo-5794208.jpeg?auto=compress&cs=tinysrgb&w=400'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
