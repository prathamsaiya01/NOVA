import 'package:flutter/material.dart';

void main() {
  runApp(const NovaApp());
}

class NovaApp extends StatelessWidget {
  const NovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [

          // 🌄 BACKGROUND
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
            ),
          ),

          // 💎 CONTENT
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  // 🔷 LOGO (REDUCED GAP)
                  Image.asset(
                    'assets/images/nova_logo.png',
                    height: size.width * 0.44,
                  ),

                  const SizedBox(height: 5), // 🔥 reduced gap

                  // 🧊 GLASS CARD + CONTENT
                  Stack(
                    alignment: Alignment.center,
                    children: [

                      // ✅ BIGGER CARD
                      Container(
                        width: size.width * 0.92,
                        height: size.height * 0.65, // 🔥 increased height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Image.asset(
                          'assets/images/glass_card.png',
                          fit: BoxFit.fill,
                        ),
                      ),

                      // 📦 CONTENT (SLIGHTLY SMALLER)
                      SizedBox(
                        width: size.width * 0.72,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            const SizedBox(height: 10),

                            Text(
                              "Login",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 26, // 🔥 slightly reduced
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            const SizedBox(height: 20),

                            _inputField(Icons.email_outlined, "Email"),
                            const SizedBox(height: 12),
                            _inputField(Icons.lock_outline, "Password", true),

                            const SizedBox(height: 8),

                            const Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(fontFamily: "Poppins"),
                              ),
                            ),

                            const SizedBox(height: 20),

                            _signInButton(),

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

                            _googleButton(),

                            const SizedBox(height: 15),

                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account? ",
                                  style: TextStyle(fontFamily: "Poppins"),
                                ),
                                Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
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

  // 🔤 INPUT FIELD
  static Widget _inputField(IconData icon, String hint, [bool isPassword = false]) {
    return Container(
      height: 50, // 🔥 slightly reduced
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.85),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(2, 4),
          )
        ],
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          icon: Icon(icon, color: Colors.black54),
          hintText: hint,
          hintStyle: const TextStyle(fontFamily: "Poppins"),
          border: InputBorder.none,
        ),
      ),
    );
  }

  // 🔵 BUTTON
  static Widget _signInButton() {
    return Container(
      height: 52,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF3B82F6),
            Color(0xFF1E3A8A),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.4),
            blurRadius: 12,
            offset: const Offset(0, 6),
          )
        ],
      ),
      child: const Center(
        child: Text(
          "Sign In",
          style: TextStyle(
            fontFamily: "Poppins",
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  // 🟢 GOOGLE BUTTON
  static Widget _googleButton() {
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.75),
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Center(
        child: Text(
          "Sign in with Google",
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
    );
  }
}