// ignore_for_file: unused_import
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import '/model/detailtabkonven_model.dart';

class PageAccordion extends StatefulWidget {
  const PageAccordion({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PageAccordionState createState() => _PageAccordionState();
}

class _PageAccordionState extends State<PageAccordion> {
  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Image.asset(
            'assets/shafa.jpg',
            fit: BoxFit.cover,
          ),
          //  AccordionController(
          //         headerStyle: _headerStyle,
          //         contentStyleHeader: _contentStyleHeader,
          //         contentStyle: _contentStyle,
          //         children: <Widget>[
          //           AccordionHeader(
          //             title: 'Lorem ipsum',
          //             icon: Icons.arrow_drop_down,
          //           ),
          //           AccordionContent(
          //             content: _loremIpsum,
          //           ),
          //         ],
          //       ),
          Accordion(
            maxOpenSections: 2,
            headerBackgroundColorOpened: Colors.black54,
            headerPadding:
                const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
            sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
            sectionClosingHapticFeedback: SectionHapticFeedback.light,
            children: [
              AccordionSection(
                isOpen: true,
                leftIcon:
                    const Icon(Icons.insights_rounded, color: Colors.white),
                headerBackgroundColor: Colors.blue,
                headerBackgroundColorOpened: Colors.red,
                header: Text('Deskripsi', style: _headerStyle),
                content: Text(_loremIpsum, style: _contentStyle),
                contentHorizontalPadding: 20,
                contentBorderWidth: 1,
                // onOpenSection: () => print('onOpenSection ...'),
                // onCloseSection: () => print('onCloseSection ...'),
              ),
              AccordionSection(
                isOpen: false,
                leftIcon: const Icon(Icons.food_bank, color: Colors.white),
                headerBackgroundColor: Colors.blue,
                headerBackgroundColorOpened: Color.fromARGB(255, 223, 202, 20),
                header: Text('Syarat', style: _headerStyle),
                content: DataTable(
                  sortAscending: true,
                  sortColumnIndex: 1,
                  dataRowHeight: 40,
                  showBottomBorder: false,
                  columns: [
                    DataColumn(
                        label: Text('ID', style: _contentStyleHeader),
                        numeric: true),
                    DataColumn(
                        label: Text('Description', style: _contentStyleHeader)),
                    DataColumn(
                        label: Text('Price', style: _contentStyleHeader),
                        numeric: true),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('1',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Fancy Product', style: _contentStyle)),
                        DataCell(Text(r'$ 199.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('2',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Another Product', style: _contentStyle)),
                        DataCell(Text(r'$ 79.00',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('3',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(
                            Text('Really Cool Stuff', style: _contentStyle)),
                        DataCell(Text(r'$ 9.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('4',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Last Product goes here',
                            style: _contentStyle)),
                        DataCell(Text(r'$ 19.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                  ],
                ),
              ),
              AccordionSection(
                isOpen: false,
                leftIcon: const Icon(Icons.food_bank, color: Colors.white),
                headerBackgroundColor: Colors.blue,
                headerBackgroundColorOpened: Colors.green,
                header: Text('Ketentuan', style: _headerStyle),
                content: DataTable(
                  sortAscending: true,
                  sortColumnIndex: 1,
                  dataRowHeight: 40,
                  showBottomBorder: false,
                  columns: [
                    DataColumn(
                        label: Text('ID', style: _contentStyleHeader),
                        numeric: true),
                    DataColumn(
                        label: Text('Description', style: _contentStyleHeader)),
                    DataColumn(
                        label: Text('Price', style: _contentStyleHeader),
                        numeric: true),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('1',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Fancy Product', style: _contentStyle)),
                        DataCell(Text(r'$ 199.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('2',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Another Product', style: _contentStyle)),
                        DataCell(Text(r'$ 79.00',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('3',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(
                            Text('Really Cool Stuff', style: _contentStyle)),
                        DataCell(Text(r'$ 9.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('4',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Last Product goes here',
                            style: _contentStyle)),
                        DataCell(Text(r'$ 19.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                  ],
                ),
              ),
              AccordionSection(
                isOpen: false,
                leftIcon: const Icon(Icons.food_bank, color: Colors.white),
                headerBackgroundColor: Colors.blue,
                headerBackgroundColorOpened: Color.fromARGB(255, 223, 134, 33),
                header: Text('Fasilitas & Manfaat', style: _headerStyle),
                content: DataTable(
                  sortAscending: true,
                  sortColumnIndex: 1,
                  dataRowHeight: 40,
                  showBottomBorder: false,
                  columns: [
                    DataColumn(
                        label: Text('ID', style: _contentStyleHeader),
                        numeric: true),
                    DataColumn(
                        label: Text('Description', style: _contentStyleHeader)),
                    DataColumn(
                        label: Text('Price', style: _contentStyleHeader),
                        numeric: true),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('1',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Fancy Product', style: _contentStyle)),
                        DataCell(Text(r'$ 199.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('2',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Another Product', style: _contentStyle)),
                        DataCell(Text(r'$ 79.00',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('3',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(
                            Text('Really Cool Stuff', style: _contentStyle)),
                        DataCell(Text(r'$ 9.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('4',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Last Product goes here',
                            style: _contentStyle)),
                        DataCell(Text(r'$ 19.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                  ],
                ),
              ),
              AccordionSection(
                isOpen: false,
                leftIcon: const Icon(Icons.food_bank, color: Colors.white),
                headerBackgroundColor: Colors.blue,
                headerBackgroundColorOpened: Color.fromARGB(255, 86, 192, 196),
                header: Text('SK & SE', style: _headerStyle),
                content: DataTable(
                  sortAscending: true,
                  sortColumnIndex: 1,
                  dataRowHeight: 40,
                  showBottomBorder: false,
                  columns: [
                    DataColumn(
                        label: Text('ID', style: _contentStyleHeader),
                        numeric: true),
                    DataColumn(
                        label: Text('Description', style: _contentStyleHeader)),
                    DataColumn(
                        label: Text('Price', style: _contentStyleHeader),
                        numeric: true),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('1',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Fancy Product', style: _contentStyle)),
                        DataCell(Text(r'$ 199.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('2',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Another Product', style: _contentStyle)),
                        DataCell(Text(r'$ 79.00',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('3',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(
                            Text('Really Cool Stuff', style: _contentStyle)),
                        DataCell(Text(r'$ 9.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('4',
                            style: _contentStyle, textAlign: TextAlign.right)),
                        DataCell(Text('Last Product goes here',
                            style: _contentStyle)),
                        DataCell(Text(r'$ 19.99',
                            style: _contentStyle, textAlign: TextAlign.right))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ])));
  }

  // _openWebUrl(String url, String title) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => GeneralWebScreen(url: url, item: title),
  //     ),
  //   );
  // }
}
