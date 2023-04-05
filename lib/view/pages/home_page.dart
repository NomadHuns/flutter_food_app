import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/common/constants.dart';
import 'package:food_app/view/componunts/category_tile.dart';
import 'package:food_app/view/componunts/food_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      floatingActionButton: _buildFloadtingActionButton(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(context),
          _buildCategoryScrollView(),
          _buildSearchBar(),
          _buildFoodCardScrollView(),
        ],
      ),
    );
  }

  Widget _buildFoodCardScrollView() {
    return const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
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
              FoodCard(
                image: "assets/images/image_2.png",
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

  Widget _buildSearchBar() {
    return Container(
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
        );
  }

  Widget _buildCategoryScrollView() {
    return const SingleChildScrollView(
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
        );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Simple way to find \n'
                'Tasty food',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        );
  }

  Widget _buildFloadtingActionButton() {
    return Container(
      height: 80,
      width: 80,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kPrimaryColor.withOpacity(.26),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor,
        ),
        child: SvgPicture.asset("assets/icons/plus.svg"),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      actions: [
        SvgPicture.asset(
          'assets/icons/menu.svg',
          height: 11,
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
