import 'package:flutter/material.dart';
import 'package:news_app/Screens/SplashScreen.dart';

import 'Screens/HomeScreen.dart';

void main() {
  runApp(const sports_app());
}

class sports_app extends StatelessWidget {
  const sports_app({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sports_app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
