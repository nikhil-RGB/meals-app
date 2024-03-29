// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/pages/MealItemTrait.dart';
import 'package:transparent_image/transparent_image.dart';

class MealCard extends StatelessWidget {
  final Meal meal;
  const MealCard({super.key, required this.meal});
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.all(10.0),
    //   child: InkWell(
    //     onTap: () {},
    //     child: Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(22),
    //         // gradient: LinearGradient(
    //         //   colors: [
    //         //     Color.fromARGB(255, 115, 72, 72),
    //         //     Color.fromARGB(255, 231, 26, 26),
    //         //     Color.fromARGB(255, 234, 101, 101),
    //         //   ],
    //         // ),
    //       ),
    //       // color: Color.fromARGB(255, 115, 72, 72),
    //       child: Padding(
    //         padding: const EdgeInsets.all(7.0),
    //         child: Center(
    //           child: Column(
    //             children: [
    //               Text(
    // meal.title,
    // maxLines: 2,
    // softWrap: true,
    // overflow: TextOverflow.ellipsis,
    //                 style: Theme.of(context).textTheme.titleLarge!.copyWith(
    //                       color: Theme.of(context).colorScheme.onBackground,
    //                       fontWeight: FontWeight.w800,
    //                     ),
    //                 textScaleFactor: 1.22,
    //               ),
    //               const SizedBox(height: 17),
    //               SizedBox(
    //                 width: 130,
    //                 height: 100,
    //                 child: Card(
    //                   shape: const CircleBorder(),
    //                   clipBehavior: Clip.antiAlias,
    //                   elevation: 5,
    //                   child: FadeInImage(
    //                     placeholder: MemoryImage(kTransparentImage),
    //                     image: NetworkImage(meal.imageUrl),
    //                     width: 120,
    //                     height: 120,
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.black,
      margin: const EdgeInsets.all(10.0),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              height: 300,
              width: double.infinity,
            ),
            Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  color: Colors.black54,
                  child: Column(
                    children: [
                      Text(
                        meal.title,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MealItemTrait(
                            label: meal.complexity.toString().split('.').last,
                            icon: Icons.work,
                          ),
                          MealItemTrait(
                            label:
                                meal.affordability.toString().split('.').last,
                            icon: Icons.money,
                          ),
                          MealItemTrait(
                            label:
                                "${meal.duration.toString().split('.').last} min",
                            icon: Icons.timer,
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
