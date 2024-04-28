import 'package:flutter/material.dart';

class HalamanTugas extends StatefulWidget {
  const HalamanTugas({super.key});

  @override
  State<HalamanTugas> createState() => _HalamanTugasState();
}

class _HalamanTugasState extends State<HalamanTugas> {
  List tugas = [
    'PA Mobile',
    'Tugas Hayati',
    'Ngantar mama',
    'PKL',
    'Jemput adek'
  ];

  void tambahTugas(String tugasBaru) {
    setState(() {
      tugas.add(tugasBaru);
    });
  }

  void hapusTugas(String itemTugas) {
    setState(() {
      tugas.remove(itemTugas);
    });
  }

  @override
  Widget build(BuildContext context) {
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
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Menunggu'),
                SizedBox(width: 20,),
                Text('Menunggu'),
                SizedBox(width: 20,),
                Text('Selesai'),
              ],
            ),
      
            Divider(height: 50,),
      
            SizedBox(
              height: 1000,
              child: ListView.separated(
                itemCount: tugas.length,
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tugas[index], textAlign: TextAlign.start),
                    trailing: GestureDetector(
                      onTap: () => hapusTugas(tugas[index]),
                      child: Icon(Icons.delete),
                    ),
                    shape: BeveledRectangleBorder(
                      side: BorderSide(color: Colors.purple)
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/tambah_tugas',
              arguments: tambahTugas
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}