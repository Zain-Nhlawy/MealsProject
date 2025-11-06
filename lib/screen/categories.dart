import 'package:flutter/material.dart';
import 'package:meals_managment/data/dummy_data.dart';
import 'package:meals_managment/models/category.dart';
import 'package:meals_managment/screen/meals.dart';
import 'package:meals_managment/widgets/category_grid_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  void _selectedItem(BuildContext context, Category category) {
    final filterredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => Meals(meals: filterredMeals, title: category.title),
      ),
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              selectedItem: () {
                _selectedItem(context, category);
              },
            ),
        ],
      ),
    );
  }
}
