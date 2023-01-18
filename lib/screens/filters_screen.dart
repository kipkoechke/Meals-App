import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  static const routeName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegeterian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, Function(bool) updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Expanded(
            child: ListView(children: [
              _buildSwitchListTile(
                  'Gluten-Free', 'Only include gluten-free meal', _glutenFree,
                  (newValue) {
                setState(
                  () {
                    _glutenFree = newValue;
                  },
                );
              }),
              _buildSwitchListTile('Lactose-Free',
                  'Only include lactose-free meal', _lactoseFree, (newValue) {
                setState(
                  () {
                    _lactoseFree = newValue;
                  },
                );
              }),
              _buildSwitchListTile(
                  'Vegeterian', 'Only include vegeterian meal', _vegeterian,
                  (newValue) {
                setState(
                  () {
                    _vegeterian = newValue;
                  },
                );
              }),
              _buildSwitchListTile('Vegan', 'Only include vegan meal', _vegan,
                  (newValue) {
                setState(
                  () {
                    _vegan = newValue;
                  },
                );
              }),
            ]),
          ),
        ],
      ),
    );
  }
}
