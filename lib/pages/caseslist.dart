import 'package:flutter/material.dart';
// import 'detailwidget.dart';
import '../model/cases.dart';
import '/model/cases.dart';

class CasesList extends StatelessWidget {
  final List<Cases> cases;
  // ignore: prefer_const_constructors_in_immutables
  CasesList({Key key, this.cases, String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // ignore: unnecessary_null_comparison
        itemCount: cases == null ? 0 : cases.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => DetailWidget(cases[index])),
              // );
            },
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(cases[index].nama_produk),
              subtitle: Text(cases[index].deskripsi),
            ),
          ));
        });
  }
}
