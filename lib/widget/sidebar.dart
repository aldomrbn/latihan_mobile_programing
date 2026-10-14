import 'package:flutter/material.dart';
import '../ui/beranda.dart';
import '../ui/login.dart';
import '../ui/poli_page.dart';
import '../ui/pegawai_page.dart';
import '../ui/pasien_page.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white, // 1. WARNA BACKGROUND KESELURUHAN SIDEBAR
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.teal, // 2. WARNA BACKGROUND HEADER (ADMIN)
            ),
            accountName: const Text("Admin"),
            accountEmail: const Text("admin@admin.com"),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.teal), // WARNA IKON
            title: const Text("Beranda"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Beranda()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.accessible, color: Colors.teal),
            title: const Text("Poli"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PoliPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.people, color: Colors.teal),
            title: const Text("Pegawai"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PegawaiPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_box_sharp, color: Colors.teal),
            title: const Text("Pasien"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PasienPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout_rounded, color: Colors.red),
            title: const Text("Keluar"),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
                    (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}