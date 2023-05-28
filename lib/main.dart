import 'package:dwm_laila/pages/counter.page.dart';
import 'package:dwm_laila/pages/home.page.dart';
import 'package:dwm_laila/pages/products.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DwmLaila());
}

class DwmLaila extends StatelessWidget {
  const DwmLaila({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/counter": (context) => CounterPage(),
        "/products": (context) => ProductsPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 22, color: Colors.blue),
          bodyLarge: TextStyle(fontSize: 32, color: Colors.blue),
          bodySmall: TextStyle(fontSize: 18, color: Colors.blue),
        ),
        iconTheme: const IconThemeData(color: Colors.blue, size: 26),
      ),
    );
  }
}
