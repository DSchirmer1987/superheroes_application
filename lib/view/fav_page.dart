import 'package:flutter/material.dart';

class FavPage extends Center {
  FavPage({super.key}) {
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Favourite Page"),
          Icon(Icons.favorite),
        ],
      ),
    );
  }
}
