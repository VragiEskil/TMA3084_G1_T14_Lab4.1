import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Ye Pizza'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade50,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.local_pizza,
                  size: 80,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Our Story',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Founded with a passion for authentic wood-fired pizzas, Ye Pizza delivers hand-crafted artisanal pies using only locally sourced ingredients and time-honored traditional techniques.',
              style: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
            ),
            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 16),
            Text(
              'Why Choose Us?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
            ),
            const SizedBox(height: 16),
            const _ValueTile(
              icon: Icons.local_fire_department,
              title: 'Wood-Fired Oven',
              description: 'Baked at 450°C for that authentic smoky crust.',
            ),
            const _ValueTile(
              icon: Icons.eco,
              title: 'Fresh Ingredients',
              description: '100% organic herbs and daily prepared dough.',
            ),
            const _ValueTile(
              icon: Icons.speed,
              title: 'Fast Delivery',
              description: 'Hot and fresh delivered right to your doorstep.',
            ),
          ],
        ),
      ),
    );
  }
}

class _ValueTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _ValueTile({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.deepOrange, size: 28),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
