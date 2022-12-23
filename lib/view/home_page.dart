import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = ['Batman', 'Spiderman', "Captain America"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
          )
        ],
      ),
    );
  }
}
