import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealCard extends StatelessWidget {
  final Meal meal;
  const MealCard({super.key, required this.meal});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  meal.title,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                const SizedBox(height: 17),
                SizedBox(
                  width: 130,
                  height: 100,
                  child: Image.network(meal.imageUrl),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
