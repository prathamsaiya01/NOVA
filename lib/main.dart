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

          // 💎 CENTER CONTENT
          Center(
            child: SingleChildScrollView(
              child: Container(
                width: size.width * 1.12,
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Stack(
                  alignment: Alignment.center,
                  children: [

                    // 🧊 GLASS CARD (MAIN FRAME)
                    Image.asset(
                      'assets/images/glass_card.png',
                      width: size.width * 1.12,
                    ),

                    // 📦 EVERYTHING INSIDE CARD
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 35,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          // 🔷 BIG LOGO (INSIDE CARD)
                          Image.asset(
                            'assets/images/nova_logo.png',
                            height: size.width * 0.44, // 🔥 BIGGER
                          ),

                          const SizedBox(height: 20),

                          // LOGIN TITLE
                          Text(
                            "Login",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: size.width * 0.08,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 25),

                          _inputField(Icons.email_outlined, "Email"),
                          const SizedBox(height: 15),
                          _inputField(Icons.lock_outline, "Password", true),

                          const SizedBox(height: 10),

                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: size.width * 0.035,
                              ),
                            ),
                          ),

                          const SizedBox(height: 25),

                          _signInButton(),

                          const SizedBox(height: 20),

                          Row(
                            children: [
                              Expanded(child: Divider()),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Or",
                                  style: TextStyle(fontFamily: "Poppins"),
                                ),
                              ),
                              Expanded(child: Divider()),
                            ],
                          ),

                          const SizedBox(height: 20),

                          _googleButton(),

                          const SizedBox(height: 20),

                          Row(
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
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.85),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
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

  // 🔵 SIGN IN BUTTON
  static Widget _signInButton() {
    return Container(
      height: 55,
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
            blurRadius: 15,
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
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  // 🟢 GOOGLE BUTTON
  static Widget _googleButton() {
    return Container(
      height: 50,
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