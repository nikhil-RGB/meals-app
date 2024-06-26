import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/Categories.dart';

import 'package:meals_app/pages/MealsScreen';
import 'package:meals_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  void _selectCategory(BuildContext context, {required Categories category}) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return MealsScreen(
        title: category.title,
        meals: dummyMeals
            .where((meal) => meal.categories.contains(category.id))
            .toList(),
      );
    }));
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Choose a category"),
        ),
        body: GridView(
          padding: const EdgeInsets.all(24.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.50,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            ...availableCategories.map((item) => CategoryItem(
                  category: item,
                  onSelected: () {
                    _selectCategory(
                      context,
                      category: item,
                    );
                  },
                )),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text("All Meals",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  )),
          icon: const Icon(Icons.food_bank_rounded),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MealsScreen(
                    title: "We have some meals!",
                    meals: dummyMeals,
                  ),
                ));
          },
        ),
      ),
    );
  }
}
