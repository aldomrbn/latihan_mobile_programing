import 'package:aplikasi_flutter_pertamaku/column_widget.dart';
import 'package:aplikasi_flutter_pertamaku/column_widget2.dart';
import 'package:flutter/material.dart';
import '/ui/poli_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PoliPage(),
    );
  }
}