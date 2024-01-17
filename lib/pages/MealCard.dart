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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 115, 72, 72),
              Color.fromARGB(255, 231, 26, 26),
              Color.fromARGB(255, 234, 101, 101),
            ],
          ),
        ),
        // color: Color.fromARGB(255, 115, 72, 72),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  meal.title,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontWeight: FontWeight.w800,
                      ),
                  textScaleFactor: 1.22,
                ),
                const SizedBox(height: 17),
                SizedBox(
                  width: 130,
                  height: 100,
                  child: Card(
                    shape: const CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    elevation: 5,
                    child: Image.network(
                      meal.imageUrl,
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
