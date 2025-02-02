import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/screens/detail_screen.dart';
import 'package:movies_app/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'detail': (_) => const DetailScreen(),
      },
    );
  }
}
