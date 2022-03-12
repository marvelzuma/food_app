import 'package:flutter/material.dart';
import 'package:food_app/burgerscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/classes/burgers.dart';

class AllBurgers extends StatefulWidget {
  const AllBurgers({Key? key}) : super(key: key);

  @override
  _AllBurgersState createState() => _AllBurgersState();
}

class _AllBurgersState extends State<AllBurgers> {
  List<Burgers> burgerlist = [
    Burgers(
        name: 'Classic burger',
        price: 7.99,
        imageUrlb: 'assets/classicburger.png',
        ingredients:
            '200g beef steak, cheddar, mozzarella, pickles, beef bacon, onions'),
    Burgers(
      ingredients:
          '200g beef steak x2, cheddar, mozzarella, pickles, beef bacon, onions, tomato, secret sauce',
      name: 'Double Steak burger',
      price: 11.99,
      imageUrlb: 'assets/doublesteak.png',
    ),
    Burgers(
      ingredients:
          '200g beef steak x2, cheddar x2, mozzarella, pickles, beef bacon, onions, tomato, secret sauce',
      name: 'Double Cheese burger',
      price: 13.99,
      imageUrlb: 'assets/doublecheese.png',
    ),
    Burgers(
      ingredients:
          'Chicken nuggets, cheddar, pickles, onions, tomato, secret sauce',
      name: 'Chicken burger',
      price: 11.99,
      imageUrlb: 'assets/chickenburger.png',
    ),
    Burgers(
      ingredients:
          'Vegetarian steak, gouda, pickles, beef bacon, onions, tomato',
      name: 'Veggie burger',
      price: 14.99,
      imageUrlb: 'assets/veggieburger.png',
    ),
    Burgers(
      ingredients: '200g beef steak , egg, cheddar, beef ham, secret sauce',
      name: 'Egg burger',
      price: 13.99,
      imageUrlb: 'assets/eggburger.png',
    ),
    Burgers(
      ingredients:
          '200g beef steak, cheddar, mozzarella, pickles, beef ham, onions, tomato, lettuce, secret sauce',
      name: 'Classic Black burger',
      price: 11.99,
      imageUrlb: 'assets/blackburger.png',
    ),
    Burgers(
      ingredients:
          '200g fish steak, cucumber, basil, lettuce, tomato, secret sauce',
      name: 'Fish burger',
      price: 15.99,
      imageUrlb: 'assets/fishburger.png',
    ),
    Burgers(
      ingredients:
          '300g kobe beef steak, caviar, tomato, 26 years old gouda cheese, lobster slices, safran, edible gold sheets',
      name: 'Million burger',
      price: 1000000,
      imageUrlb: 'assets/luxburger.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Container(
        height: 560,
        child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 3,
            children: List.generate(burgerlist.length, (index) {
              Burgers burger = burgerlist[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => BurgerScreen(burgers: burger)));
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
                          burgerlist[index].imageUrlb,
                          width: 200,
                          height: 200,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            burgerlist[index].name,
                            style: GoogleFonts.ubuntu(
                                fontSize: 15.2,
                                color: Colors.amber,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Text(
                          '\$${burgerlist[index].price}',
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
      ),
    );
  }
}
