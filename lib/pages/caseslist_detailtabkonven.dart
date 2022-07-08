import 'package:flutter/material.dart';
import 'detailtabkonven.dart';
// import 'detailwidget.dart';
import '/model/detailtabkonven_model.dart';

class CasesListDetailTabKonven extends StatelessWidget {
  final List<DetailTabKonvenModel> detailtabkonven;
  // ignore: prefer_const_constructors_in_immutables
  CasesListDetailTabKonven({Key key, this.detailtabkonven, String title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // ignore: unnecessary_null_comparison
        itemCount: detailtabkonven == null ? 0 : detailtabkonven.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              margin: const EdgeInsets.all(10),
              color: Color.fromARGB(255, 238, 236, 113),
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailTabKonven(detailtabkonven[index])),
                  );
                },
                child: ListTile(
                  leading: const Icon(Icons.note),
                  title: Text(detailtabkonven[index].konten_menu,
                      style: const TextStyle(fontSize: 15)),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                ),
              ));
        });
  }
}
