import 'package:flutter/material.dart';
import '../model/poli.dart';

class PoliUpdateForm extends StatefulWidget {
  final Poli poli;

  const PoliUpdateForm({super.key, required this.poli});

  @override
  State<PoliUpdateForm> createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ubah Poli"),
      ),
      body: Center(
        child: Text("Form Ubah Poli: ${widget.poli.namaPoli}"),
      ),
    );
  }
}