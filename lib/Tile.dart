import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  Tile({super.key});

  List names = [
    'Espresso',
    'Cappuccino',
    'Latte',
    'Mocha',
    'Macchiato',
    'Americano',
  ];

  List prices = ['\$3.50', '\$4.50', '\$5.50', '\$6.50', '\$7.50', '\$8.50'];

  List images = [
    'assets/Latte.jpg',
    'assets/Cappuccino.jpg',
    'assets/Latte.jpg',
    'assets/Cappuccino.jpg',
    'assets/Latte.jpg',
    'assets/Cappuccino.jpg',
  ];

  List subtitle = [
    'With Oat Milk',
    'With Almond Milk',
    'With Soy Milk',
    'With Coconut Milk',
    'With Oat Milk',
    'With Almond Milk',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.maxFinite,

      child: ListView.builder(
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 20),
              height: 250,
              width: 160,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(
                      255,
                      13,
                      13,
                      13,
                    ).withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(3, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 41, 41, 41).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          width: 140,

                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 80),
                          height: 20,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: const Color.fromARGB(255, 254, 165, 0),
                                size: 15,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 160, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          names[index],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subtitle[index],
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              prices[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(right: 15),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.add, color: Colors.white),
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
