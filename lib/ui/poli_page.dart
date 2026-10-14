import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
import '../model/poli.dart';
import 'poli_item.dart';
import 'poli_form.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text("Data Poli"),
        backgroundColor: Colors.teal,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              child: const Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PoliForm()),
                );
              },
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(id: "1", namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(id: "2", namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(id: "3", namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(id: "4", namaPoli: "Poli THT")),
        ],
      ),
    );
  }
}