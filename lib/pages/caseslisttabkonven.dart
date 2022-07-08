import 'package:flutter/material.dart';
import 'package:flutter_restapi/api/api_service.dart';
// import 'detailwidget.dart';
import '../model/tabkonven_model.dart';

// ignore: must_be_immutable
class CasesListTabKonven extends StatelessWidget {
  final APIService api = APIService();
  final List<TabKonvenModel> tabkonvenmodel;

  // ignore: prefer_const_constructors_in_immutables
  CasesListTabKonven({Key key, this.tabkonvenmodel, String title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tabkonvenmodel == null ? 0 : tabkonvenmodel.length,
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
                  title: Text(tabkonvenmodel[index].konten_menu,
                      style: const TextStyle(fontSize: 20)),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                ),
              ));
        });
  }

  //
}
