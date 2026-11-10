import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
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
      nip: "199001012022011001",
      nama: "dr. Andi Wijaya",
      tanggalLahir: "1990-01-01",
      nomorTelepon: "081234567890",
      email: "andi.wijaya@klinik.com",
      password: "123",
    ),
    Pegawai(
      id: 2,
      nip: "199205122022012002",
      nama: "Ners. Budi Santoso",
      tanggalLahir: "1992-05-12",
      nomorTelepon: "089876543210",
      email: "budi.santoso@klinik.com",
      password: "123",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        backgroundColor: const Color(0xFF00838F),
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              child: const Icon(Icons.add),
              onTap: () async {
                final Pegawai? pegawaiBaru = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PegawaiForm()),
                );

                if (pegawaiBaru != null) {
                  setState(() {
                    listPegawai.add(pegawaiBaru);
                  });
                }
              },
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: listPegawai.length,
        itemBuilder: (context, index) {
          return PegawaiItem(pegawai: listPegawai[index]);
        },
      ),
    );
  }
}