import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_app/Cubits/LeagueCubit/league_cubit.dart';
import 'package:sports_app/Cubits/SliderCubit/slider_cubit.dart';
import 'package:sports_app/screens/LeagueScreen.dart';
import 'package:sports_app/screens/OnboardingScreen.dart';
import 'package:sports_app/screens/SplashScreen.dart';

import 'Screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SliderCubit>(
          create: (BuildContext context) => SliderCubit(),
        ),
        BlocProvider<LeagueCubit>(
          create: (BuildContext context) => LeagueCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SportApp',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
