import 'package:flutter/material.dart';

Widget header(String text, bool isBlack, bool bold) {
  return Text(
    text,
    style: TextStyle(
      color: isBlack ? Colors.black : Colors.white,
      fontSize: 32,
      fontWeight: bold ? FontWeight.w900 : FontWeight.w700,
      fontFamily: 'Raleway',
    ),
  );
}

Widget underheader(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontFamily: 'poppins',
      color: Color.fromARGB(225, 112, 123, 129),
    ),
  );
}
