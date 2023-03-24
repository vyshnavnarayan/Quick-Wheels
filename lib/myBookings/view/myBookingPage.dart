import 'package:flutter/material.dart';

class MyBookings extends StatelessWidget {
  const MyBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: false,
        backgroundColor: Colors.grey,
      body: 
      SafeArea(
        child: Column(
          children: [
            Container(
              height: 80,
              color: Colors.grey.shade400,
              child: 
               Center(child: Text('Here is your recent activities',style: TextStyle(fontSize: 18,color: Colors.red),)),
            ),
            TabBar(
              tabs: [
            Tab(text: 'Completed',),
            Tab(text: 'Cancelled',)]
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: Center(
                    child: Text('Completed Bookings'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('Cancelled Bookings'),
                  ),
                )
              ] ),
            )
          ],
        ),
      ),
      ),
    );
  }
}