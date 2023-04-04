import 'package:flutter/material.dart';

import 'package:quick_wheels/index/view/index_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndexPage(),
          ));
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 193, 40, 29),
        body:  Center(
            child: Image(
                height: 200,
                width: 250,
                image: AssetImage('assets/images/logobus.png')),
                
          ),
        );
  }
}
