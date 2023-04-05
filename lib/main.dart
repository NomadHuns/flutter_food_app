import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/common/constants.dart';
import 'package:food_app/view/componunts/food_card.dart';
import 'package:food_app/view/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        appBarTheme: _buildAppBarTheme(),
        textTheme: _buildTextTheme(),
      ),
      home: const HomePage(),
    );
  }

  TextTheme _buildTextTheme() {
    return const TextTheme(
          headlineSmall: TextStyle(fontWeight: FontWeight.bold),
          labelLarge: TextStyle(fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontWeight: FontWeight.bold));
  }

  AppBarTheme _buildAppBarTheme() {
    return const AppBarTheme(
        backgroundColor: kWhiteColor,
        elevation: 0,
      );
  }
}