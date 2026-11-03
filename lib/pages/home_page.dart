import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ye Pizza',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Store Hero Banner Image
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                'assets/images/pizza_banner.png', // Ensure this image exists in your assets folder
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.local_pizza, size: 64, color: Colors.blue),
                      SizedBox(height: 8),
                      Text(
                        'WOW Pizza Banner\n(Add asset: assets/images/pizza_banner.png)',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Store Name & Welcome Tagline
            const Text(
              'Welcome to ye Pizza!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Freshly baked slices crafted with passion and flavor.',
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),

            // Three OutlinedButton Widgets for Main Navigation
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/menu'),
                icon: const Icon(Icons.menu_book, color: Colors.blue),
                label: const Text('View Menu', style: TextStyle(fontSize: 16, color: Colors.blue)),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue, width: 2),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/about'),
                icon: const Icon(Icons.info_outline, color: Colors.blue),
                label: const Text('About Us', style: TextStyle(fontSize: 16, color: Colors.blue)),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue, width: 2),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/contact'),
                icon: const Icon(Icons.contact_support_outlined, color: Colors.blue),
                label: const Text('Contact Us', style: TextStyle(fontSize: 16, color: Colors.blue)),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue, width: 2),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Social Media Section
            const Text(
              'Connect With Us',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Twitter / X Icon Button
                IconButton(
                  icon: Image.asset(
                    'assets/images/x.png',
                    width: 28,
                    height: 28,
                    color: Colors.black87, // Optional: tints the icon if it's a monochrome PNG
                  ),
                  tooltip: 'Twitter / X',
                  onPressed: () => Navigator.pushNamed(context, '/twitter'),
                ),
                // Facebook Icon Button
                IconButton(
                  icon: const Icon(Icons.facebook, size: 36, color: Colors.indigo),
                  tooltip: 'Facebook',
                  onPressed: () => Navigator.pushNamed(context, '/facebook'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}