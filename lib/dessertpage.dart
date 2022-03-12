import 'package:flutter/material.dart';
import 'package:food_app/classes/burgers.dart';
import 'package:google_fonts/google_fonts.dart';

class DessertScreen extends StatefulWidget {
  Burgers dessert;
  DessertScreen({required this.dessert});

  @override
  _DessertScreenState createState() => _DessertScreenState();
}

class _DessertScreenState extends State<DessertScreen> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.only(left: 0, top: 25),
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Image(
                    image: AssetImage(widget.dessert.imageUrlb),
                    width: 270,
                    height: 270,
                  ),
                ),
                Positioned(
                  left: 0,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 50,
                        color: Colors.amber,
                      )),
                )
              ],
            ),
            Container(
              height: 477,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[850],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Center(
                      child: Text(widget.dessert.name,
                          style: GoogleFonts.ubuntu(
                              fontSize: 33,
                              color: Colors.amber,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text('Ingredients:',
                      style: GoogleFonts.ubuntu(
                        fontSize: 25,
                        color: Colors.amber,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(widget.dessert.ingredients,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 17,
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(children: [
                    Text('Menu (fries + drink) ',
                        style: GoogleFonts.ubuntu(
                          fontSize: 25,
                          color: Colors.amber,
                        )),
                    Transform.scale(
                      scale: 2,
                      child: Checkbox(
                          activeColor: Colors.white,
                          fillColor: MaterialStateProperty.all(Colors.amber),
                          value: check,
                          onChanged: (bool? a) {
                            setState(() {
                              check = a!;
                            });
                          }),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('+\$ 3.99',
                        style: GoogleFonts.ubuntu(color: Colors.grey))
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text('Price: ',
                          style: GoogleFonts.ubuntu(
                            fontSize: 25,
                            color: Colors.amber,
                          )),
                      Text(
                        '\$ ${widget.dessert.price}',
                        style: GoogleFonts.roboto(
                            fontSize: 30, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 98,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7, right: 7),
                    child: Container(
                      height: 75,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        ),
                        child: Text(
                          'Buy now',
                          style: GoogleFonts.ubuntu(
                              color: Colors.white, fontSize: 35),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
