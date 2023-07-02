import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  runApp(const MainApp());
  //https://ellenskye.com/
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyLarge: TextStyle(
                  color: Colors.black,
                  fontFamily: "awery",
                  fontWeight: FontWeight.w700,
                  fontSize: 70),
              bodyMedium: TextStyle(
                  color: Colors.black,
                  fontFamily: "awery",
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
              bodySmall: TextStyle(
                  color: Colors.black,
                  fontFamily: "awery",
                  fontWeight: FontWeight.w100,
                  fontSize: 19),
          )),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
