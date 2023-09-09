import 'package:flutter/material.dart';
import 'package:the_basics/views/home/home_views.dart';
//import 'package:the_basics/widgets/navigation_bar/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
      home: HomeView(),
    );
  }
}
