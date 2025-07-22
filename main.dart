import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_carts/providers/count_provider.dart';
import 'package:shopping_carts/providers/example_one_provider.dart';
import 'package:shopping_carts/screen/count_example.dart';
import 'package:shopping_carts/screen/example_one_screen.dart';
import 'package:shopping_carts/why_provider.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleoneProvider()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ExampleOneScreen(),
      ),
    );
  }
}