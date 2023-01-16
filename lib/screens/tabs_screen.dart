import 'package:flutter/material.dart';

import './favorites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Meals'),
          bottom: const TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.category),
              text: 'CAtegories',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Favorites',
            ),
          ]),
        ),
        body:
            const TabBarView(children: [CategoriesScreen(), FavoritesScreen()]),
      ),
    );
  }
}
