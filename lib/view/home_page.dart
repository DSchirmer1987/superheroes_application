import 'package:flutter/material.dart';

class HomePage extends Center {
  HomePage({super.key}) {
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Home Page"),
          Icon(Icons.home),
        ],
      ),
    );
  }
}
