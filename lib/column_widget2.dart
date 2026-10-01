import 'package:flutter/material.dart';

class ColumnWidget2 extends StatelessWidget {
  const ColumnWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Column"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            padding: const EdgeInsets.all(20),
            child: const Text("Kolom 1"),
          ),
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(20),
            child: const Text("Kolom 2"),
          ),
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(20),
            child: const Text("Kolom 3"),
          ),
          Container(
            color: Colors.orange,
            padding: const EdgeInsets.all(20),
            child: const Text("Kolom 4"),
          ),
        ],
      ),
    );
  }
}