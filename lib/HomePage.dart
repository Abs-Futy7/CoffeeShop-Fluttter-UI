import 'package:coffee_shop/Tile2.dart';
import 'package:coffee_shop/tile.dart';
import 'package:flutter/material.dart';

//stl
class HomePage extends StatelessWidget {
  HomePage({super.key});

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
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 19, 19, 19), // Background color
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 22, 22, 22).withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, -3), // Shadow above the navbar
              ),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromARGB(
              0,
              27,
              26,
              26,
            ), // Keep transparent to show container color
            elevation: 0, // Remove default shadow
            selectedItemColor: Colors.orange, // Highlight selected item
            unselectedItemColor: Colors.white.withOpacity(0.7),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag, size: 30),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite, size: 30),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications, size: 30),
                label: '',
              ),
            ],
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.apps, size: 30, color: Colors.grey),
                      ),

                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset('assets/logo.png'),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Find the best\nCoffee for you',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),

                Container(
                  width: double.maxFinite,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Search your coffee...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),

                SizedBox(
                  height: 30,
                  width: double.maxFinite,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15, left: 5),
                        child: Text(
                          names[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:
                                (index == 0)
                                    ? const Color.fromARGB(255, 239, 123, 7)
                                    : Colors.grey,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 20),

                Tile(),

                SizedBox(height: 20),

                Text(
                  'Popular Coffees',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 20),

                Tile2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
