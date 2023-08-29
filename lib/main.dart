import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:sports_app/Cubits/LeagueCubit/league_cubit.dart';
import 'package:sports_app/Cubits/SliderCubit/slider_cubit.dart';
import 'package:sports_app/screens/LeagueScreen.dart';
import 'package:sports_app/screens/OnboardingScreen.dart';
import 'package:sports_app/screens/SplashScreen.dart';
=======
import 'package:sportsapp/Cubit/FootballCountries/football_countries_cubit.dart';
import 'package:sportsapp/Cubit/cubit/slider_cubit.dart';
import 'package:sportsapp/Screens/CountriesScreen.dart';
import 'package:sportsapp/screens/SplashScreen.dart';
>>>>>>> 95cfc2a9104cdb37bd5a0739d1aef7a891924a17

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
<<<<<<< HEAD
        BlocProvider<LeagueCubit>(
          create: (BuildContext context) => LeagueCubit(),
=======
        // cubit from Countries 
        BlocProvider<FootballCountriesCubit>(
          create: (BuildContext context) => FootballCountriesCubit(),
>>>>>>> 95cfc2a9104cdb37bd5a0739d1aef7a891924a17
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SportApp',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FootballCountriesPage(),
      ),
    );
  }
}
