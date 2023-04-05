import 'package:flutter/material.dart';
import 'package:food_app/common/constants.dart';

class FoodCard extends StatelessWidget {
  final String image;
  final String title;
  final String ingredient;
  final String desc;
  final int calories;
  final int price;

  const FoodCard({Key? key, required this.image, required this.title, required this.ingredient, required this.desc, this.calories = 0, this.price = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 400,
      width: 270,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 380,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: kPrimaryColor.withOpacity(.06),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 5,
            child: Container(
              height: 181,
              width: 181,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor.withOpacity(.15),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: -50,
            child: Container(
              height: 184,
              width: 267,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 80,
            child: Text(
              "\$$price",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: kPrimaryColor),
            ),
          ),
          Positioned(
            top: 201,
            left: 40,
            child: Container(
              width: 210,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "With $ingredient",
                    style: TextStyle(
                      color: kTextColor.withOpacity(.4),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    desc,
                    maxLines: 4,
                    style: TextStyle(
                      color: kTextColor.withOpacity(.7),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("${calories}kcal")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
