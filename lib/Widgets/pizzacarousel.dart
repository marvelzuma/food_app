import 'package:flutter/material.dart';
import 'package:food_app/classes/burgers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/pizzascreen.dart';

class PizzaCarousel extends StatefulWidget {
  const PizzaCarousel({Key? key}) : super(key: key);

  @override
  _PizzaCarouselState createState() => _PizzaCarouselState();
}

class _PizzaCarouselState extends State<PizzaCarousel> {
  List<Burgers> burgerscaroussel = [
    Burgers(
      ingredients: 'Tomato sauce, mozzarella, olive oil',
      name: 'Margarita',
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
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pizzas',
                style:
                    GoogleFonts.ubuntu(fontSize: 26, color: Colors.amber[200]),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pizzamenu');
                  },
                  child:
                      Text('View all', style: GoogleFonts.rubik(fontSize: 18)))
            ],
          ),
        ),
        Container(
          height: 240,
          child: ListView.builder(
              itemCount: burgerscaroussel.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                Burgers pizza = burgerscaroussel[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => PizzaScreen(pizza: pizza)));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[800],
                    ),
                    margin: EdgeInsets.only(left: 10),
                    width: 210,
                    child: Column(
                      children: [
                        Image.asset(
                          burgerscaroussel[index].imageUrlb,
                          width: 200,
                          height: 160,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          burgerscaroussel[index].name,
                          style: GoogleFonts.ubuntu(
                              fontSize: 19,
                              color: Colors.amber,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$${burgerscaroussel[index].price}',
                          style: GoogleFonts.ubuntu(
                              fontSize: 20,
                              color: Colors.amber[100],
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
