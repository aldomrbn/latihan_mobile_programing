import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  final List<Pegawai> listPegawai = [
    Pegawai(
      id: 1,
      nip: "199201012020011001",
      nama: "Dr. Renaldo Marbun",
      tanggalLahir: "2001-26-02",
      nomorTelepon: "081234567890",
      email: "aldo@gmail.com",
      password: "password123",
    ),
    Pegawai(
      id: 2,
      nip: "199505102021022002",
      nama: "juni, S.Kep",
      tanggalLahir: "1995-05-10",
      nomorTelepon: "089876543210",
      email: "juni@gmail.com",
      password: "password456",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PegawaiForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: listPegawai.map((data) => PegawaiItem(pegawai: data)).toList(),
      ),
    );
  }
}