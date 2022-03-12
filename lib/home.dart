import 'package:flutter/material.dart';
import 'package:food_app/Widgets/burgercarousel.dart';
import 'package:food_app/Widgets/dessertcaroussel.dart';
import 'package:food_app/Widgets/pizzacarousel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'classes/icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<IconsThing> _icons = [
    IconsThing(icon: FontAwesomeIcons.home, routeName: '/mouise'),
    IconsThing(icon: FontAwesomeIcons.hamburger, routeName: '/burgermenu'),
    IconsThing(icon: FontAwesomeIcons.pizzaSlice, routeName: '/pizzamenu'),
    IconsThing(icon: FontAwesomeIcons.iceCream, routeName: '/dessertmenu'),
  ];
  int _selectedIndex = 0;
  Widget _buildIcon(int index, _icon) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, _icon[index].routeName.toString());
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: _selectedIndex == index ? Colors.black : Colors.grey[800],
            borderRadius: BorderRadius.circular(30)),
        child: Icon(
          _icons[index].icon,
          size: 25,
          color: _selectedIndex == index ? Colors.amber : Colors.amber[200],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 70, 0),
                child: SelectableText('What do you want to eat today?',
                    style: GoogleFonts.ubuntu(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.amber[200])),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildIcon(map.key, _icons),
                    )
                    .toList(),
              ),
              SizedBox(
                height: 25,
              ),
              BurgerCarousel(),
              SizedBox(
                height: 30,
              ),
              PizzaCarousel(),
              SizedBox(
                height: 30,
              ),
              DessertCarousel(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
