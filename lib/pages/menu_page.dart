//Tok page menu
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  static const List<Map<String, String>> pizzas = [
    {
      'name': 'Margherita',
      'price': 'RM 18.90',
      'image': 'assets/images/margherita.jpg',
    },
    {
      'name': 'Pepperoni',
      'price': 'RM 22.90',
      'image': 'assets/images/pepperoni.jpg',
    },
    {
      'name': 'Hawaiian',
      'price': 'RM 21.90',
      'image': 'assets/images/hawaiian.jpg',
    },
    {
      'name': 'BBQ Chicken',
      'price': 'RM 24.90',
      'image': 'assets/images/bbq_chicken.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Menu'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: pizzas.length,
        itemBuilder: (context, index) {
          final pizza = pizzas[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  pizza['image']!,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stack) =>
                      const Icon(Icons.local_pizza, size: 60),
                ),
              ),
              title: Text(
                pizza['name']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                pizza['price']!,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
