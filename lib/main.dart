import 'package:flutter/material.dart';
import 'package:flutter_bloc_cubit/pages/weather_search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc & Cubbit ',
      home: WeatherSearchPage(),
    );
  }
}

