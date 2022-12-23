import 'package:flutter/material.dart';
import 'package:superheroes_application/model/mockup_data.dart';
import 'package:superheroes_application/model/superhero.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Superhero superhero = Superhero.fromJson(MockupData.getSuperheroExample());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            superhero.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Image.network(
            superhero.imageURL,
            scale: 2,
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
