import 'package:flutter/material.dart';
import 'package:superheroes_application/view/detail_page.dart';

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
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DetailPage()));
            },
          );
        },
      ),
    );
  }
}
