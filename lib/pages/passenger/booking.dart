import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.grey,
            indicatorColor: Color(0xffff6347),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.bus_alert,
                  color: Colors.black,
                  size: 46,
                ),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(
                  Icons.train_outlined,
                  size: 46,
                  color: Colors.black,
                ),
                text: 'Train',
              ),
              Tab(
                icon: Icon(
                  Icons.flight,
                  size: 46,
                  color: Colors.black,
                ),
                text: 'Flight',
              ),
            ],
          ),
        ),
        body: Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
