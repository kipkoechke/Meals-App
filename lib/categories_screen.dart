import 'package:flutter/material.dart';
import './category_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bellon Meal'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
        children: dummyData
            .map(
              (categoryData) =>
                  CategoryItem(categoryData.title, categoryData.color),
            )
            .toList(),
      ),
    );
  }
}
