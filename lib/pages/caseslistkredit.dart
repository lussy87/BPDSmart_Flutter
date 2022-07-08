import 'package:flutter/material.dart';
import 'package:flutter_restapi/api/api_service.dart';
// import 'detailwidget.dart';
import '../model/kredit_model.dart';
import 'kredit_pages.dart';

// ignore: must_be_immutable
class CasesListKredit extends StatelessWidget {
  final APIService api = APIService();
  final List<KreditModel> kreditmodel;

  // ignore: prefer_const_constructors_in_immutables
  CasesListKredit({Key key, this.kreditmodel, String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: kreditmodel == null ? 0 : kreditmodel.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              margin: const EdgeInsets.all(10),
              color: Colors.blue[100],
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: InkWell(
                onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const PageDanaKonven(
                  //               title: 'Dana Konvensional',
                  //               // cases: [],
                  //             )),
                  //   );
                },
                child: ListTile(
                  leading: const Icon(Icons.note),
                  title: Text(kreditmodel[index].konten_menu,
                      style: const TextStyle(fontSize: 20)),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                ),
              ));
        });
  }

  //
}
