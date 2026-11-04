import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/menu_page.dart';
import 'pages/about_page.dart';
//import 'pages/contact_page.dart';
import 'pages/webview_page.dart';

void main() {
  runApp(const YePizzaApp());
}

class YePizzaApp extends StatelessWidget {
  const YePizzaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ye Pizza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),
        '/about': (context) => const AboutPage(),
        //'/contact': (context) => const ContactPage(),
        '/twitter': (context) => const WebViewPage(
              title: 'Twitter / X',
              url: 'https://x.com',
            ),
        '/facebook': (context) => const WebViewPage(
              title: 'Facebook',
              url: 'https://facebook.com',
            ),
      },
    );
  }
}