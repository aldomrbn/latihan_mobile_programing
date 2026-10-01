import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Card(
            child: ListTile(
              title: const Text("Poli Anak"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Poli poliAnak = Poli(id: "1", namaPoli: "Poli Anak");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PoliDetail(poli: poliAnak),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Kandungan"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Poli poliKandungan = Poli(id: "2", namaPoli: "Poli Kandungan");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PoliDetail(poli: poliKandungan),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Gigi"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Poli poliGigi = Poli(id: "3", namaPoli: "Poli Gigi");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PoliDetail(poli: poliGigi),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli THT"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Poli poliTHT = Poli(id: "4", namaPoli: "Poli THT");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PoliDetail(poli: poliTHT),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}