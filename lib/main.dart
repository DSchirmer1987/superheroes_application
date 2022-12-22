import 'package:flutter/material.dart';
import 'package:superheroes_application/view/start_page.dart';

void main() {
  runApp(const MyApp(
    startPage: StartPage(),
  ));
}

class MyApp extends StatelessWidget {
  final Widget startPage;
  const MyApp({super.key, required this.startPage});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Superhero Application',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: startPage,
    );
  }
}
