import 'package:flutter/material.dart';
import 'package:food_app/dessertpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/classes/burgers.dart';

class DessertList extends StatefulWidget {
  const DessertList({Key? key}) : super(key: key);

  @override
  _DessertListState createState() => _DessertListState();
}

class _DessertListState extends State<DessertList> {
  List<Burgers> dessertlist = [
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
    ),
    Burgers(
      ingredients:
          'Cream cheese, milk, egg, sugar, flour, baking powder, blueberries, biscuits',
      name: 'Berries cheesecake',
      price: 11.99,
      imageUrlb: 'assets/berrycheesecake.png',
    ),
    Burgers(
      ingredients: 'Flour, chocolate, eggs, sugar, salt, milk',
      name: 'Chocolate cake',
      price: 9.99,
      imageUrlb: 'assets/chococake.png',
    ),
    Burgers(
      ingredients: 'Flour, chocolate, eggs, sugar, salt, milk, mint extract',
      name: 'ChocoMint cupcake',
      price: 5.99,
      imageUrlb: 'assets/cupcake.png',
    ),
    Burgers(
      ingredients:
          'Chimera\'s milk, whipped cream from the lama on the everest, gold, other expensive things',
      name: 'Million ice cream',
      price: 1000000,
      imageUrlb: 'assets/millionice.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          children: List.generate(dessertlist.length, (index) {
            Burgers dessert = dessertlist[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DessertScreen(dessert: dessert)));
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
                        dessertlist[index].imageUrlb,
                        width: 130,
                        height: 130,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          dessertlist[index].name,
                          style: GoogleFonts.ubuntu(
                              fontSize: 15.2,
                              color: Colors.amber,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        '\$${dessertlist[index].price}',
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
