import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportsapp/Cubit/FootballCountries/football_countries_cubit.dart';
import 'package:sportsapp/Cubit/cubit/slider_cubit.dart';
import 'package:sportsapp/Screens/CountriesScreen.dart';
import 'package:sportsapp/screens/SplashScreen.dart';

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
        // cubit from Countries 
        BlocProvider<FootballCountriesCubit>(
          create: (BuildContext context) => FootballCountriesCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'sports_app',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FootballCountriesPage(),
      ),
    );
  }
}
