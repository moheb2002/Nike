import 'package:flutter/material.dart';

@override
Widget otpBox(String hintText) {
  return SizedBox(
    width: 70,
    height: 70,
    child: TextField(
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        counterText: '',
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      maxLength: 1,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );
}
