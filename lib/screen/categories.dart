import 'package:flutter/material.dart';
import 'package:meals_managment/data/category_dummy_data.dart';
import 'package:meals_managment/widgets/category_grid_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text('choose your categories',)),
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
            CategoryGridItem(category: category),
        ],
      ),
    );
  }
}
