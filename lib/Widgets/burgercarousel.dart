import 'package:flutter/material.dart';
import 'package:food_app/classes/burgers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/burgerscreen.dart';

class BurgerCarousel extends StatefulWidget {
  const BurgerCarousel({Key? key}) : super(key: key);

  @override
  _BurgerCarouselState createState() => _BurgerCarouselState();
}

class _BurgerCarouselState extends State<BurgerCarousel> {
  List<Burgers> burgerscaroussel = [
    Burgers(
      ingredients:
          '200g beef steak, cheddar, mozzarella, pickles, beef bacon, onions',
      name: 'Classic burger',
      price: 7.99,
      imageUrlb: 'assets/classicburger.png',
    ),
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
                'Burgers',
                style:
                    GoogleFonts.ubuntu(fontSize: 26, color: Colors.amber[200]),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/burgermenu');
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
                Burgers burger = burgerscaroussel[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => BurgerScreen(burgers: burger)));
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
        ),
      ],
    );
  }
}
