import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFFFFF8F0),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.local_pizza,
                  size: 100,
                  color: Colors.deepOrange,
                ),
                SizedBox(height: 16),
                Text(
                  'WOW Pizza',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Good pizza. Good company.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 32),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Our Story',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Welcome to WOW Pizza! We serve delicious pizzas '
                          'for students, families, and friends to enjoy '
                          'together. Whether you prefer classic cheese or '
                          'vegetable toppings, there is something for you '
                          'on our menu.',
                          style: TextStyle(fontSize: 16, height: 1.6),
                        ),
                        SizedBox(height: 24),
                        Text(
                          'Our Promise',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'We aim to offer tasty pizzas at affordable '
                          'prices, with friendly service that makes '
                          'every visit enjoyable.',
                          style: TextStyle(fontSize: 16, height: 1.6),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Made for pizza lovers.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
