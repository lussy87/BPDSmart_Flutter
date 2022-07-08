import 'package:flutter/material.dart';
import 'package:flutter_restapi/api/api_service.dart';
import 'package:flutter_restapi/pages/detailkonven_pages.dart';
import 'package:flutter_restapi/pages/kredit_pages.dart';
// import 'detailwidget.dart';
import '../model/tabkonven_model.dart';
import '/model/konven_model.dart';
import 'danakonven_pages.dart';

// ignore: must_be_immutable
class CasesListKonven extends StatelessWidget {
  final APIService api = APIService();
  final List<KonvenModel> konvenmodel;

  // ignore: prefer_const_constructors_in_immutables
  CasesListKonven({Key key, this.konvenmodel, String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: konvenmodel == null ? 0 : konvenmodel.length,
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
                        builder: (context) => const PageDanaKonven(
                              title: 'Dana Konvensional',
                            )),
                  );
                },
                child: ListTile(
                  leading: const Icon(Icons.note),
                  title: Text(konvenmodel[index].konten_menu,
                      style: const TextStyle(fontSize: 20)),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                ),
              ));
        });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ListView.builder(
  //       // ignore: unnecessary_null_comparison
  //       itemCount: konvenmodel == null ? 0 : konvenmodel.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         // return _buildPlayerModelList(
  //         //     konvenmodel[index], tabkonvenmodel[index]);
  //         // return ExpansionTile(
  //         //     title: Text(konvenmodel[index].nama_menu),
  //         //     children: <Widget>[
  //         //       ListTile(
  //         //         title: Text(konvenmodel[index].nama_menu),
  //         //       ),
  //         //       ListTile(
  //         //         title: Text(konvenmodel[index].nama_menu),
  //         //       ),
  //         //     ]);

  //         // return Card(
  //         //     child: InkWell(
  //         // onTap: () {
  //         //   Navigator.push(
  //         //     context,
  //         //     MaterialPageRoute(
  //         //         builder: (context) => DetailWidget(cases[index])),
  //         //   );
  //         // },
  //         //   child: ListTile(
  //         //     leading: const Icon(Icons.person),
  //         //     title: Text(konvenmodel[index].nama_menu),

  //         //   ),
  //         // ));

  //         return Card(
  //           child: ExpansionTile(
  //             title: Text(
  //               konvenmodel[index].nama_menu,
  //               style: const TextStyle(
  //                   fontSize: 20.0,
  //                   fontWeight: FontWeight.bold,
  //                   color: Colors.blue),
  //             ),
  //             children: <Widget>[
  //               InkWell(
  //                 onTap: () {
  //                   Navigator.push(
  //                     context,
  //                     MaterialPageRoute(
  //                         builder: (context) =>
  //                             DetailWidget(konvenmodel[index])),
  //                   );
  //                 },
  //                 child: ListTile(
  //                   title: Text(
  //                     konvenmodel[index].nama_menu,
  //                     style: const TextStyle(
  //                         fontSize: 16.0,
  //                         fontWeight: FontWeight.bold,
  //                         color: Color.fromARGB(255, 8, 21, 63)),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       });
  // }

//   Widget _buildPlayerModelList(
//       KonvenModel items, TabKonvenModel tabkonvenmodel) {
//     return Card(
//       child: ExpansionTile(
//         title: Text(
//           items.nama_menu,
//           style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
//         ),
//         children: <Widget>[
//           InkWell(
//             onTap: () {},
//             child: ListTile(
//               title: Text(
//                 tabkonvenmodel.nama_menu,
//                 style: TextStyle(fontWeight: FontWeight.w700),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
}
