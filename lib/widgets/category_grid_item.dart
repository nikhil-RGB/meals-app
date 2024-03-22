import 'package:flutter/material.dart';
import 'package:meals_app/models/Categories.dart';

class CategoryItem extends StatelessWidget {
  final Categories category;
  final void Function() onSelected;
  const CategoryItem(
      {super.key, required this.category, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelected();
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.90),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ),
    );
  }
}
