import 'package:flutter/material.dart';
import 'package:superheroes_application/view/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = ['Batman', 'Spiderman', "Captain America"];

  Widget? homeBody;

  void _showDetails() {
    setState(() {
      homeBody = const DetailPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    homeBody = ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          onTap: () {
            _showDetails();
          },
        );
      },
    );

    return Center(child: homeBody);
  }
}
