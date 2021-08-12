import 'package:flutter/material.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({Key? key}) : super(key: key);

  @override
  _KalkulatorState createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  double _hasil = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Kalkulator'),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'MASUKAN DUA ANGKA',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: angka1,
              decoration: InputDecoration(
                labelText: 'Angka Pertama',
                border: OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: angka2,
              decoration: InputDecoration(
                labelText: 'Angka Kedua',
                border: OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _tambah,
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: _kurang,
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: _kali,
                  child: Text('X'),
                ),
                ElevatedButton(
                  onPressed: _bagi,
                  child: Text('/'),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _bersihkan,
              child: Text('BERSIHKAN'),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              child: Text(
                'HASIL',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              child: Text(_hasil.toString(),style: TextStyle(fontSize: 24),),
            ),
          ],
        ),
      ),
    );
  }

  void _tambah() {
    setState(() {
      _hasil = double.parse(angka1.text) + double.parse(angka2.text);
    });
  }

  void _kurang() {
    setState(() {
      _hasil = double.parse(angka1.text) - double.parse(angka2.text);
    });
  }

  void _kali() {
    setState(() {
      _hasil = double.parse(angka1.text) * double.parse(angka2.text);
    });
  }

  void _bagi() {
    setState(() {
      _hasil = double.parse(angka1.text) / double.parse(angka2.text);
    });
  }

  void _bersihkan() {
    angka1.text = '';
    angka2.text = '';
    _hasil = 0;
  }
}
