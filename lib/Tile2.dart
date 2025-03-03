import 'package:flutter/material.dart';

class Tile2 extends StatelessWidget {
  Tile2({super.key});

  List names = [
    'Espresso',
    'Cappuccino',
    'Latte',
    'Mocha',
    'Macchiato',
    'Americano',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.maxFinite,

      child: ListView.builder(
        itemCount: names.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 120,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 41, 41, 41).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/image.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(width: 10),

                            Text(
                              '5 Popular Coffees\nYou Must Try',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
