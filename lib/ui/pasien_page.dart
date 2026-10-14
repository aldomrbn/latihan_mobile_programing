import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
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
      nama: "Siti Rahma",
      tanggalLahir: "1995-07-25",
      nomorTelepon: "085677889900",
      alamat: "Jl. Mawar No. 5",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pasien"),
        backgroundColor: Colors.teal, // <--- WARNA BACKGROUND HEADER
        foregroundColor: Colors.white, // <--- WARNA TEKS & IKON HEADER
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              child: const Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PasienForm()),
                );
              },
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: listPasien.length,
        itemBuilder: (context, index) {
          return PasienItem(pasien: listPasien[index]);
        },
      ),
    );
  }
}