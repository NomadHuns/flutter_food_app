import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/common/constants.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: kWhiteColor,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontWeight: FontWeight.bold),
          labelLarge: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SvgPicture.asset(
            'assets/icons/menu.svg',
            height: 11,
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Simple way to find \n'
              'Tasty food',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTile(title: 'all', active: true),
                CategoryTile(title: 'Italian'),
                CategoryTile(title: 'Asian'),
                CategoryTile(title: 'Chinese'),
                CategoryTile(title: 'Burgers'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key, required this.title, this.active = false}) : super(key: key);

  final String title;
  final bool active;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(color: active ? kPrimaryColor : kTextColor.withOpacity(0.4)),
      ),
    );
  }
}
