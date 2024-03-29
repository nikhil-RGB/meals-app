import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MealItemTrait extends StatelessWidget {
  final String label;
  final IconData icon;
  const MealItemTrait({super.key, required this.label, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 17,
            color: Colors.white,
          ),
          const Gap(3),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          )
        ],
      ),
    );
  }
}
