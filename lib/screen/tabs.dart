import 'package:flutter/material.dart';
import 'package:meals_managment/screen/categories.dart';
import 'package:meals_managment/screen/meals.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() {
    return _TabsState();
  }
}

class _TabsState extends State<Tabs> {
  var _selectedScreenIndex = 0;

  void _selectingScrreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(context) {
    var _activePageTitle = 'Categories';
    Widget activeScreen = Categories();

    if (_selectedScreenIndex == 1) {
      activeScreen = Meals(meals: []);
      _activePageTitle = 'Favorites';
    }
    return Scaffold(
      appBar: AppBar(title: Text(_activePageTitle)),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectingScrreen,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'favorites'),
        ],
      ),
    );
  }
}
