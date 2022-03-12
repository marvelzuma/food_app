import 'package:flutter/material.dart';
import 'package:food_app/pizzascreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/classes/burgers.dart';

class PizzaList extends StatefulWidget {
  const PizzaList({Key? key}) : super(key: key);

  @override
  _PizzaListState createState() => _PizzaListState();
}

class _PizzaListState extends State<PizzaList> {
  List<Burgers> pizzalist = [
    Burgers(
      ingredients: 'Tomato sauce, mozzarella, olive oil',
      name: 'Margarita Pizza',
      price: 9.99,
      imageUrlb: 'assets/margarita.png',
    ),
    Burgers(
      ingredients: 'Tomato sauce, mozzarella, olive oil, beef ham dices',
      name: 'Ham Pizza',
      price: 11.99,
      imageUrlb: 'assets/hampizza.png',
    ),
    Burgers(
      ingredients: 'Tomato sauce, mozzarella, olive oil, pepperoni slices',
      name: 'Pepperoni pizza',
      price: 12.99,
      imageUrlb: 'assets/pepperoni.png',
    ),
    Burgers(
      ingredients: 'Tomato sauce, mozzarella, olive oil, feta cheese, basil',
      name: 'Basil & Feta pizza',
      price: 13.99,
      imageUrlb: 'assets/fetapizza.png',
    ),
    Burgers(
      ingredients: 'Tomato sauce, mozzarella, olive oil, italian ham, basil',
      name: 'Napolitana pizza',
      price: 12.99,
      imageUrlb: 'assets/napolitana.png',
    ),
    Burgers(
      ingredients: 'Tomato sauce, mozzarella, olive oil, shrimp, squid',
      name: 'Sea food pizza',
      price: 15.99,
      imageUrlb: 'assets/seafoodpizza.png',
    ),
    Burgers(
      ingredients:
          'Tomato sauce, 100 years old mozzarella, olive oil, caviar, lobster, edible gold sheets, safran',
      name: 'Million pizza',
      price: 1000000,
      imageUrlb: 'assets/millionpizza.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          children: List.generate(pizzalist.length, (index) {
            Burgers pizza = pizzalist[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => PizzaScreen(pizza: pizza)));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 4, right: 4, bottom: 4),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[850],
                  ),
                  width: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        pizzalist[index].imageUrlb,
                        width: 130,
                        height: 130,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          pizzalist[index].name,
                          style: GoogleFonts.ubuntu(
                              fontSize: 15.2,
                              color: Colors.amber,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        '\$${pizzalist[index].price}',
                        style: GoogleFonts.ubuntu(
                            fontSize: 17,
                            color: Colors.amber[100],
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
