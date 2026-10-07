import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  final List<Pasien> listPasien = [
    Pasien(
      id: 1,
      nomorRm: "RM-001",
      nama: "Ahmad Dahlan",
      tanggalLahir: "1988-03-12",
      nomorTelepon: "081122334455",
      alamat: "Jl. Merdeka No. 12",
    ),
    Pasien(
      id: 2,
      nomorRm: "RM-002",
      nama: "Dewi Lestari",
      tanggalLahir: "1998-11-20",
      nomorTelepon: "085566778899",
      alamat: "Jl. Mawar No. 45",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PasienForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: listPasien.map((data) => PasienItem(pasien: data)).toList(),
      ),
    );
  }
}