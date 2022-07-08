import 'package:flutter/material.dart';
import 'package:flutter_restapi/api/api_service.dart';
// import 'detailwidget.dart';
import '/model/syariah_model.dart';

class CasesListSyariah extends StatelessWidget {
  final APIService api = APIService();
  final List<SyariahModel> syariahmodel;

  // ignore: prefer_const_constructors_in_immutables
  CasesListSyariah({Key key, this.syariahmodel, String title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // ignore: unnecessary_null_comparison
        itemCount: syariahmodel == null ? 0 : syariahmodel.length,
        itemBuilder: (BuildContext context, int index) {
          // return _buildPlayerModelList(
          //     konvenmodel[index], tabkonvenmodel[index]);
          // return ExpansionTile(
          //     title: Text(konvenmodel[index].nama_menu),
          //     children: <Widget>[
          //       ListTile(
          //         title: Text(konvenmodel[index].nama_menu),
          //       ),
          //       ListTile(
          //         title: Text(konvenmodel[index].nama_menu),
          //       ),
          //     ]);

          // return Card(
          //     child: InkWell(
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => DetailWidget(cases[index])),
          //   );
          // },
          //   child: ListTile(
          //     leading: const Icon(Icons.person),
          //     title: Text(konvenmodel[index].nama_menu),

          //   ),
          // ));

          return Card(
            child: ExpansionTile(
              title: Text(
                syariahmodel[index].nama_menu,
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              children: <Widget>[
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) =>
                    //           DetailWidget(konvenmodel[index])),
                    // );
                  },
                  child: ListTile(
                    title: Text(
                      syariahmodel[index].nama_menu,
                      style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          );
        });

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
}
