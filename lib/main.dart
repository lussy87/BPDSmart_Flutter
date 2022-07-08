// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'package:database/database.dart';
import 'package:search/search.dart';

Future<void> main() async {
  runApp(HomeLogin());
  final database = SearcheableDatabase(
    master: MemoryDatabaseAdapter(),
  ).database();
  final collection = database.collection('bpdsmart');
  final result = await collection.search(
    query: Query.parse(
      '(Hello OR Hi) world!',
      skip: 0,
      take: 10,
    ),
  );
}

class HomeLogin extends StatelessWidget {
  const HomeLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Loader',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        accentColor: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 22.0, color: Colors.blueAccent),
          headline2: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: Colors.blueAccent,
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.blueAccent,
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
