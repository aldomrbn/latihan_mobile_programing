import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

class PasienItem extends StatelessWidget {
  final Pasien pasien;

  const PasienItem({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(pasien.nama),
        subtitle: Text("No RM: ${pasien.nomorRm}"),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PasienDetail(pasien: pasien),
            ),
          );
        },
      ),
    );
  }
}