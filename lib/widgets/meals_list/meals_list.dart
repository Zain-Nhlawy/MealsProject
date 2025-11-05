import 'package:flutter/material.dart';
import 'package:meals_managment/models/meal.dart';
import 'package:meals_managment/widgets/meals_list/meal_item.dart';

class MealsList extends StatelessWidget {
  const MealsList({super.key, required this.meals});
  final List<Meal> meals;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: MealItem(meal: meals[index]),
        );
      },
    );
  }
}
