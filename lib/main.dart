import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/common/constants.dart';
import 'package:food_app/componunts/food_card.dart';

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
            titleMedium: TextStyle(fontWeight: FontWeight.bold)),
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
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBoarderColor),
            ),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          FoodCard(
            image: "assets/images/image_1.png",
            title: "Vegan salad bowl",
            price: 20,
            calories: 420,
            ingredient: "red Tomato",
            desc:
                "Contrary to popular belief, Lorem Ipsum is not simply random text."
                " It has roots in a piece of classical Latin literature from 45 BC,"
                " making it over 2000 years old. ",
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key, required this.title, this.active = false})
      : super(key: key);

  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: active ? kPrimaryColor : kTextColor.withOpacity(0.4)),
      ),
    );
  }
}
