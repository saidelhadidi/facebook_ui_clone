import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Image.asset("assets/images/App Rounded Logo.png", width: 100),
                  SizedBox(height: 62),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your email";
                      }
                      final bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                      ).hasMatch(value);

                      if (!emailValid) {
                        return "Please enter a valid email address";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Mobile Number or Email Address",
                      hintStyle: TextStyle(
                        color: Color(0xFF898F9C),
                        fontSize: 16,
                      ),
                      filled: true,
                      fillColor: Color(0XFFD6DFF1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  TextFormField(
                    obscureText: isObscure,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }
                      final bool passwordValid = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                      ).hasMatch(value);

                      if (!passwordValid) {
                        return "Password must contain A-Z, a-z, 0-9, special char, and be 8+ chars";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Color(0xFF898F9C),
                        fontSize: 16,
                      ),
                      filled: true,
                      fillColor: Color(0XFFD6DFF1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Color(0XFF1877F2),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Forgotten Password ?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0XFF898F9C),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(flex: 1),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(0XFF1877F2)),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      "Create Account",
                      style: TextStyle(color: Color(0XFF1877F2)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset("assets/images/Meta Logo.png", width: 100),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
