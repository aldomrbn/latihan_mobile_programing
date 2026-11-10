import 'package:flutter/material.dart';
import '../model/pegawai.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({super.key});

  @override
  State<PegawaiForm> createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();
  final _nipCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _tanggalLahirCtrl = TextEditingController();
  final _nomorTeleponCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Pegawai"),
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
                _fieldNip(),
                const SizedBox(height: 12),
                _fieldNama(),
                const SizedBox(height: 12),
                _fieldTanggalLahir(),
                const SizedBox(height: 12),
                _fieldNomorTelepon(),
                const SizedBox(height: 12),
                _fieldEmail(),
                const SizedBox(height: 12),
                _fieldPassword(),
                const SizedBox(height: 24),
                _tombolSimpan(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _fieldNip() {
    return TextField(
      controller: _nipCtrl,
      decoration: const InputDecoration(
        labelText: "NIP",
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _fieldNama() {
    return TextField(
      controller: _namaCtrl,
      decoration: const InputDecoration(
        labelText: "Nama Pegawai",
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

  Widget _fieldEmail() {
    return TextField(
      controller: _emailCtrl,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: "Email",
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _fieldPassword() {
    return TextField(
      controller: _passwordCtrl,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password",
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
          Pegawai pegawai = Pegawai(
            id: DateTime.now().millisecondsSinceEpoch,
            nip: _nipCtrl.text,
            nama: _namaCtrl.text,
            tanggalLahir: _tanggalLahirCtrl.text,
            nomorTelepon: _nomorTeleponCtrl.text,
            email: _emailCtrl.text,
            password: _passwordCtrl.text,
          );
          Navigator.pop(context, pegawai);
        },
        child: const Text("Simpan", style: TextStyle(fontSize: 16)),
      ),
    );
  }
}