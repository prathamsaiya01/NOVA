import 'package:flutter/material.dart';
import 'signup_page.dart';
import '../widgets/common_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                        height: size.height * 0.65,
                        child: Image.asset(
                          'assets/images/glass_card.png',
                          fit: BoxFit.fill,
                        ),
                      ),

                      SizedBox(
                        width: size.width * 0.72,
                        child: Column(
                          children: [

                            const SizedBox(height: 20),

                            const Text(
                              "Login",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            const SizedBox(height: 20),

                            inputField(Icons.email_outlined, "Email"),
                            const SizedBox(height: 12),
                            inputField(Icons.lock_outline, "Password", true),

                            const SizedBox(height: 8),

                            const Align(
                              alignment: Alignment.centerRight,
                              child: Text("Forgot Password?"),
                            ),

                            const SizedBox(height: 20),

                            button("Sign In"),

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

                            googleButton("Sign in with Google"),

                            const SizedBox(height: 15),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Don't have an account? "),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const SignUpPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Sign Up",
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