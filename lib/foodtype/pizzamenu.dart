import 'package:flutter/material.dart';
import 'package:food_app/Widgets/burgerlist.dart';
import 'package:food_app/Widgets/pizzalist.dart';
import 'package:food_app/classes/icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PizzaMenu extends StatefulWidget {
  const PizzaMenu({Key? key}) : super(key: key);

  @override
  _PizzaMenuState createState() => _PizzaMenuState();
}

class _PizzaMenuState extends State<PizzaMenu> {
  List<IconsThing> _icons = [
    IconsThing(icon: FontAwesomeIcons.home, routeName: '/home'),
    IconsThing(icon: FontAwesomeIcons.hamburger, routeName: '/burgermenu'),
    IconsThing(icon: FontAwesomeIcons.pizzaSlice, routeName: '/mouise'),
    IconsThing(icon: FontAwesomeIcons.iceCream, routeName: '/dessertmenu'),
  ];
  int _selectedIndex = 2;

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
                child: Text('Our Pizzas',
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
                height: 20,
              ),
              PizzaList()
            ],
          ),
        ),
      ),
    );
  }
}
