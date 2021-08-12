import 'package:flutter/material.dart';

class TampilNama extends StatefulWidget {
  const TampilNama({Key? key}) : super(key: key);

  @override
  _TampilNamaState createState() => _TampilNamaState();
}

class _TampilNamaState extends State<TampilNama> {
  TextEditingController _textEditingController = TextEditingController();
  var nama = 'Masukan Nama Anda';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Mobile'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(nama),
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nama = 'Nama Anda: ' + _textEditingController.text;
                  print(nama);
                });
              },
              child: Text('TAMPILKAN'),
            )
          ],
        ),
      ),
    );
  }
}
