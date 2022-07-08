// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'package:flutter/material.dart';
import '../model/danakonven_model.dart';
import '/api/api_service.dart';
import '/pages/accordion.dart';
import 'package:http/http.dart' as http;
import 'caseslistdanakonven.dart';

import 'danakonven_pages.dart';

class PageDanaKonven extends StatefulWidget {
  const PageDanaKonven({Key key, this.title}) : super(key: key);
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _PageDanaKonvenState createState() => _PageDanaKonvenState();
}

class _PageDanaKonvenState extends State<PageDanaKonven> {
  final APIService api = APIService();
  List<DanaKonvenModel> danakonvenList = [];
  int _selectedNavbar = 0;

  // ignore: unused_element
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    danakonvenList ??= <DanaKonvenModel>[];
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: loadList(),
            builder: (context, snapshot) {
              return danakonvenList.isNotEmpty
                  ? CasesListDanaKonven(
                      danakonvenmodel: danakonvenList,
                    )
                  : const Center(
                      child: Text(
                      'No data found, tap plus button to add!',
                    ));
            },
          ),
        ),
      ),
    );
  }

  Future loadList() {
    Future<List<DanaKonvenModel>> futureCases = api.getdanakonven();
    futureCases.then((danakonvenList) {
      if (mounted) {
        setState(() {
          this.danakonvenList = danakonvenList;
        });
      }
    });
    return futureCases;
  }
}
