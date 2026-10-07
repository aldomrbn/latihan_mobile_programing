import 'package:flutter/material.dart';
import '../model/pasien.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pasien"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ID : ${widget.pasien.id ?? '-'}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Nomor RM : ${widget.pasien.nomorRm}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Nama : ${widget.pasien.nama}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("Tanggal Lahir : ${widget.pasien.tanggalLahir}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("No. Telepon : ${widget.pasien.nomorTelepon}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Alamat : ${widget.pasien.alamat}", style: const TextStyle(fontSize: 16)),
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