import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _makanan = [
      'jengkol',
      'soto',
      'nasi goreng',
      'capcay',
      'pecel',
      'sate',
      'penyetan',
      'ayam bakar',
      'sambal terong',
      'rujak cingur',
      'gado gado',
      'nasi krawu',
      'nasi campur',
      'krengsengan',
      'bakso',
      'mi ayam',
      'nasi kebuli',
      'nasi padang'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('List View Sederhana'),
      ),
      body: ListView.separated(
        itemCount: _makanan.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(_makanan[index]),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
        ),
      ),
    );
  }
}
