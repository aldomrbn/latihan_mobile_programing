import 'package:flutter/material.dart';
import '../model/pasien.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({super.key});

  @override
  State<PasienForm> createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _nomorRmCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _tanggalLahirCtrl = TextEditingController();
  final _nomorTeleponCtrl = TextEditingController();
  final _alamatCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Pasien"),
        backgroundColor: const Color(0xFF00838F),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _fieldNomorRm(),
                const SizedBox(height: 12),
                _fieldNama(),
                const SizedBox(height: 12),
                _fieldTanggalLahir(),
                const SizedBox(height: 12),
                _fieldNomorTelepon(),
                const SizedBox(height: 12),
                _fieldAlamat(),
                const SizedBox(height: 24),
                _tombolSimpan(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _fieldNomorRm() {
    return TextField(
      controller: _nomorRmCtrl,
      decoration: const InputDecoration(
        labelText: "Nomor RM",
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _fieldNama() {
    return TextField(
      controller: _namaCtrl,
      decoration: const InputDecoration(
        labelText: "Nama Pasien",
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _fieldTanggalLahir() {
    return TextField(
      controller: _tanggalLahirCtrl,
      decoration: const InputDecoration(
        labelText: "Tanggal Lahir (YYYY-MM-DD)",
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _fieldNomorTelepon() {
    return TextField(
      controller: _nomorTeleponCtrl,
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
        labelText: "Nomor Telepon",
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _fieldAlamat() {
    return TextField(
      controller: _alamatCtrl,
      maxLines: 3,
      decoration: const InputDecoration(
        labelText: "Alamat",
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _tombolSimpan() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00838F),
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          Pasien pasien = Pasien(
            id: DateTime.now().millisecondsSinceEpoch,
            nomorRm: _nomorRmCtrl.text,
            nama: _namaCtrl.text,
            tanggalLahir: _tanggalLahirCtrl.text,
            nomorTelepon: _nomorTeleponCtrl.text,
            alamat: _alamatCtrl.text,
          );
          Navigator.pop(context, pasien);
        },
        child: const Text("Simpan", style: TextStyle(fontSize: 16)),
      ),
    );
  }
}