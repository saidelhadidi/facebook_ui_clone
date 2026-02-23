import 'package:facebook_ui/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(flex: 1),
              Image.asset("assets/images/App Rounded Logo.png", width: 100),
              Spacer(flex: 2),
              Column(
                children: [
                  Text(
                    "From",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0XFF898F9C),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Image.asset("assets/images/Meta Logo.png", width: 98),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
