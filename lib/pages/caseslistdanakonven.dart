import 'package:flutter/material.dart';
import 'package:flutter_restapi/api/api_service.dart';
// import 'detailwidget.dart';
import '../model/danakonven_model.dart';
import 'danakonven_pages.dart';
import 'detailtabkonven_pages.dart';

// ignore: must_be_immutable
class CasesListDanaKonven extends StatelessWidget {
  final APIService api = APIService();
  final List<DanaKonvenModel> danakonvenmodel;

  // ignore: prefer_const_constructors_in_immutables
  CasesListDanaKonven({Key key, this.danakonvenmodel, String title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: danakonvenmodel == null ? 0 : danakonvenmodel.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              margin: const EdgeInsets.all(10),
              color: Colors.blue[100],
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PageDetailTabKonven(
                              title: 'Detail Tabungan Konvensional',
                            )),
                  );
                },
                child: ListTile(
                  leading: const Icon(Icons.note),
                  title: Text(danakonvenmodel[index].konten_menu,
                      style: const TextStyle(fontSize: 20)),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                ),
              ));
        });
  }

  //
}
