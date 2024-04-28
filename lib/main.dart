import 'package:belajar_layout/halaman/tambah_tugas.dart';
import 'package:belajar_layout/halaman/tugas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AplikasiSaya());
}

class AplikasiSaya extends StatefulWidget {
  AplikasiSaya({super.key});

  @override
  State<AplikasiSaya> createState() => _AplikasiSayaState();
}

class _AplikasiSayaState extends State<AplikasiSaya> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HalamanTugas(),
        '/tambah_tugas': (context) => HalamanTambahTugas()
      }
    );
  }
}