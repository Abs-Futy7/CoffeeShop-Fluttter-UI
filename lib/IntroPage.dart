import 'package:flutter/material.dart';
import 'package:coffee_shop/HomePage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // Changed to center the text
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Center the text
            children: [
              Text(
                'Café Brewtopia',
                style: TextStyle(
                  color: Color.fromARGB(255, 239, 123, 7), // Orange color
                  fontSize: 28, // Larger font size for Café Brewtopia
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/logo.png',
              height: 190, // Reduced the size of the logo
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Text(
              'Coffee So Good\nIt\'s Magic',
              style: TextStyle(
                fontSize: 35, // Larger font size
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Container(
              width:
                  MediaQuery.of(context).size.width *
                  0.8, // 80% of screen width
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 239, 123, 7), // Same color as button
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "font30", // Made the font bold
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
