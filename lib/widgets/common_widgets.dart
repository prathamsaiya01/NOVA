import 'package:flutter/material.dart';

Widget inputField(IconData icon, String hint, [bool isPassword = false]) {
  return Container(
    height: 50,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.85),
      borderRadius: BorderRadius.circular(30),
    ),
    child: TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        icon: Icon(icon, color: Colors.black54),
        hintText: hint,
        border: InputBorder.none,
      ),
    ),
  );
}

Widget button(String text) {
  return Container(
    height: 52,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: const LinearGradient(
        colors: [Color(0xFF3B82F6), Color(0xFF1E3A8A)],
      ),
    ),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  );
}

Widget googleButton(String text) {
  return Container(
    height: 48,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.75),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Center(child: Text(text)),
  );
}