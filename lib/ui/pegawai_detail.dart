import 'package:flutter/material.dart';
import '../model/pegawai.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pegawai"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ID : ${widget.pegawai.id ?? '-'}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("NIP : ${widget.pegawai.nip}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Nama : ${widget.pegawai.nama}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("Tanggal Lahir : ${widget.pegawai.tanggalLahir}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("No. Telepon : ${widget.pegawai.nomorTelepon}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Email : ${widget.pegawai.email}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
                  icon: const Icon(Icons.edit),
                  label: const Text("Ubah"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
                  icon: const Icon(Icons.delete),
                  label: const Text("Hapus"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}