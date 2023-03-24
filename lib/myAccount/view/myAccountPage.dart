import 'package:flutter/material.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'My Account',
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                // elevation: 3,
                  child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text(
                  'Name',
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
                      height: 3,
                    ),
                    Text('Male or Female'),
                    SizedBox(
                      height: 3,
                    ),
                    Text('Phone Number'),
                    SizedBox(
                      height: 3,
                    ),
                    Text('Email ID'),
                    SizedBox(
                      height: 3,
                    )
                  ],
                ),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
              )
                  ),
                  SizedBox(height: 10,),
                 Card(
                  // elevation: 3,
                   child: ListTile(
                    title: Text('My Bookings'),
                    trailing: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.keyboard_arrow_right)),
                   ),
                 ),
                 Card(
                  // elevation: 3,
                   child: ListTile(
                    title: Text('Wallets'),
                    trailing: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.keyboard_arrow_right))
                   ),
                 ),
                 Card(
                  // elevation: 3,
                   child: ListTile(
                    title: Text('Cards'),
                    trailing: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.keyboard_arrow_right))
                   ),
                 ),
                 Card(
                  // elevation: 3,
                   child: ListTile(
                    title: Text('Offers'),
                    trailing: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.keyboard_arrow_right))
                   ),
                 ),
                 Card(
                  // elevation: 3,
                   child: ListTile(
                    title: Text('Help'),
                    trailing: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.keyboard_arrow_right))
                   ),
                 ),
                 Card(
                  // elevation: 3,
                   child: ListTile(
                    title: Text('About Us'),
                    trailing: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.keyboard_arrow_right))
                   ),
                 ),
                  Card(
                    // elevation: 3,
                    child: ListTile(
                    title: Text('Settings'),
                    trailing: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.keyboard_arrow_right))
                                 ),
                  ),
                  Card(
                  // elevation: 3,
                   child: ListTile(
                    title: Text('Feedback'),
                    trailing: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.keyboard_arrow_right))
                   ),
                 ),
                  SizedBox(height: 25,),
                  Card(
                    child: 
                    ListTile(
                      title: Text('Log Out'),
                    )
                  )
            ],
          ),
        ),
      ),
    );
  }
}
