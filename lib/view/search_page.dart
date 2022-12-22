import 'package:flutter/material.dart';

class SearchPage extends Center {
  SearchPage({super.key}) {
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Search Page"),
          Icon(Icons.search),
        ],
      ),
    );
  }
}
