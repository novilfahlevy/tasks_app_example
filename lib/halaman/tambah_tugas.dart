import 'package:flutter/material.dart';

class HalamanTambahTugas extends StatelessWidget {
  HalamanTambahTugas({super.key});

  TextEditingController tugasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final tambahTugas = ModalRoute.of(context)!.settings.arguments as Function(String tugasBaru);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Belajar Layouting',
            style: TextStyle(color: Colors.white)
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: tugasController,
                  decoration: InputDecoration(
                    label: Text('Nama tugas'),
                    border: OutlineInputBorder()
                  ),
                ),

                SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      tambahTugas(tugasController.text); // menambah tugas
                      Navigator.pop(context); // kembali ke halaman sebelumnya

                      // tampilkan pesan
                      const snackBar = SnackBar(
                        content: Text('Tugas berhasil ditambah.'),
                      );
                      
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: BeveledRectangleBorder()
                    ),
                    child: Text('+ Tambah', style: TextStyle(color: Colors.white),)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}