import 'package:flutter/material.dart';
import 'package:image_search/data/api.dart';
import 'package:image_search/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(api: PixabayApi()),
      debugShowCheckedModeBanner: false,
    );
  }
}
