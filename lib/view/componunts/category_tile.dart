import 'package:flutter/material.dart';
import 'package:food_app/common/constants.dart';

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
