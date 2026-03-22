import 'package:flutter/material.dart';
import '../widgets/common_widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
            ),
          ),

          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  Image.asset(
                    'assets/images/nova_logo.png',
                    height: size.width * 0.44,
                  ),

                  const SizedBox(height: 5),

                  Stack(
                    alignment: Alignment.center,
                    children: [

                      Container(
                        width: size.width * 0.92,
                        height: size.height * 0.75,
                        child: Image.asset(
                          'assets/images/glass_card1.png',
                          fit: BoxFit.fill,
                        ),
                      ),

                      SizedBox(
                        width: size.width * 0.72,
                        child: Column(
                          children: [

                            const SizedBox(height: 20),

                            const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            const SizedBox(height: 20),

                            inputField(Icons.person_outline, "Full Name"),
                            const SizedBox(height: 12),

                            inputField(Icons.email_outlined, "Email"),
                            const SizedBox(height: 12),

                            inputField(Icons.lock_outline, "Password", true),

                            const SizedBox(height: 6),

                            const Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Must be at least 8 characters",
                                style: TextStyle(fontSize: 11),
                              ),
                            ),

                            const SizedBox(height: 12),

                            inputField(Icons.lock_outline, "Confirm Password", true),

                            const SizedBox(height: 20),

                            button("Sign Up"),

                            const SizedBox(height: 15),

                            Row(
                              children: const [
                                Expanded(child: Divider()),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text("Or"),
                                ),
                                Expanded(child: Divider()),
                              ],
                            ),

                            const SizedBox(height: 15),

                            googleButton("Sign up with Google"),

                            const SizedBox(height: 15),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Already have an account? "),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "Log In",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}