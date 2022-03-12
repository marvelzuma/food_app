import 'package:flutter/material.dart';
import 'package:food_app/classes/burgers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/dessertpage.dart';

class DessertCarousel extends StatefulWidget {
  const DessertCarousel({Key? key}) : super(key: key);

  @override
  _DessertCarouselState createState() => _DessertCarouselState();
}

class _DessertCarouselState extends State<DessertCarousel> {
  List<Burgers> burgerscaroussel = [
    Burgers(
      ingredients: 'Flour, chocolate, eggs, sugar, salt, milk',
      name: 'Chocolate brownie',
      price: 9.99,
      imageUrlb: 'assets/browniechoc.png',
    ),
    Burgers(
      ingredients:
          'Milk, kinder bueno chuncks, whipped cream, chocolate, ice, vanilla',
      name: 'Kinder milkshake',
      price: 8.99,
      imageUrlb: 'assets/kindermilkshake.png',
    ),
    Burgers(
      ingredients: 'Pistachio, whipped cream, milk, sugar',
      name: 'Pistachio ice cream',
      price: 7.99,
      imageUrlb: 'assets/pistacheice.png',
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
                'Desserts',
                style:
                    GoogleFonts.ubuntu(fontSize: 26, color: Colors.amber[200]),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dessertmenu');
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
                Burgers dessert = burgerscaroussel[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DessertScreen(dessert: dessert)));
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
