import 'package:flutter/material.dart';
import 'package:flutter_provider_test/providers/counter_provider.dart';
import 'package:flutter_provider_test/providers/shopping_cart_provider.dart';
import 'package:flutter_provider_test/screens/home_screen.dart';
import 'package:flutter_provider_test/screens/second_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => Counter(),
      ),
      ChangeNotifierProvider(
        create: (_) => ShoppingCart(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}
