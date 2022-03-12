import 'package:flutter/material.dart';
import 'package:food_app/foodtype/burgermenu.dart';
import 'package:food_app/foodtype/dessertmenu.dart';
import 'package:food_app/foodtype/pizzamenu.dart';
import 'home.dart';
import 'firstscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/', //à modifier plus tard pour mettre le '/'
    routes: {
      '/': (context) => FirstScreen(),
      '/home': (context) => Home(),
      '/burgermenu': (context) => BurgerMenu(),
      '/pizzamenu': (context) => PizzaMenu(),
      '/dessertmenu': (context) => DessertMenu(),
    },
  ));
}
