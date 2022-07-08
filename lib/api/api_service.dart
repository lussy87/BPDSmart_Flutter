// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter_restapi/model/konven_model.dart';

import '../model/danakonven_model.dart';
import '../model/detailtabkonven_model.dart';
import '../model/kredit_model.dart';
import '/model/syariah_model.dart';
import '/model/konven_model.dart';
import '/model/tabkonven_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import '../model/login_model.dart';

const String url = "http://192.168.100.211:8080";

class APIService {
  login(LoginRequestModel requestModel) async {
    String url = "http://192.168.100.211:8080/login";

    final response = await http.post(Uri.parse(url),
        body: jsonEncode(requestModel.toJson()),
        headers: {"Content-Type": "application/json"});
    // final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200 || response.statusCode == 400) {
      print("response.body");
      print(response.body);
    } else {
      throw Exception('Failed to load data!');
    }
  }

  //  login(LoginRequestModel requestModel) async {
  // Future<List<LoginRequestModel>> getlogin() async {
  //   Response res = await get('$url/login'),
  //       body = jsonDecode(res.body),
  //       headers = {'Content-Type': 'application/json'} as http.Response;
  //   if (res.statusCode == 200 || res.statusCode == 400) {
  //     print("response.body");
  //     print(res.body);
  //   } else {
  //     throw Exception('Failed to load data!');
  //   }
  // }
  Future<List<KonvenModel>> getkonven() async {
    Response res = await get('$url/konven');

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<KonvenModel> konvenmodel =
          body.map((dynamic item) => KonvenModel.fromJson(item)).toList();
      return konvenmodel;
    } else {
      throw "Failed to load cases list";
    }
  }

  Future<List<DanaKonvenModel>> getdanakonven() async {
    Response res = await get('$url/danakonven');

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<DanaKonvenModel> danakonven =
          body.map((dynamic item) => DanaKonvenModel.fromJson(item)).toList();
      return danakonven;
    } else {
      throw "Failed to load cases list";
    }
  }

  Future<List<KreditModel>> getkredit() async {
    Response res = await get('$url/kredit');

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<KreditModel> kredit =
          body.map((dynamic item) => KreditModel.fromJson(item)).toList();
      return kredit;
    } else {
      throw "Failed to load cases list";
    }
  }

  Future<List<DetailTabKonvenModel>> getdetailtabkonven() async {
    Response res = await get('$url/detailtabkonven');

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<DetailTabKonvenModel> detailtabkonven = body
          .map((dynamic item) => DetailTabKonvenModel.fromJson(item))
          .toList();
      return detailtabkonven;
    } else {
      throw "Failed to load cases list";
    }
  }

  // Future<List<KonvenModel>> getkonven() async {
  //   Response res = await get('$url/danakonven');

  //   if (res.statusCode == 200) {
  //     List<dynamic> body = jsonDecode(res.body);
  //     List<KonvenModel> konvenmodel =
  //         body.map((dynamic item) => KonvenModel.fromJson(item)).toList();
  //     return konvenmodel;
  //   } else {
  //     throw "Failed to load cases list";
  //   }
  // }

  Future<List<SyariahModel>> getsyariah() async {
    Response res = await get('$url/DanaSyariah');

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<SyariahModel> syariahmodel =
          body.map((dynamic item) => SyariahModel.fromJson(item)).toList();
      return syariahmodel;
    } else {
      throw "Failed to load cases list";
    }
  }

  // ignore: non_constant_identifier_names

  // ignore: unused_element
  // Future<List<DetailTabKonvenModel>> getdetailkonven() async {
  //   Response res = await get('$url/detailtabkonven');

  //   if (res.statusCode == 200) {
  //     List<dynamic> body = jsonDecode(res.body);
  //     List<DetailTabKonvenModel> detailtabkonven = body
  //         .map((dynamic item) => DetailTabKonvenModel.fromJson(item))
  //         .toList();
  //     return detailtabkonven;
  //   } else {
  //     throw "Failed to load cases list";
  //   }
  // }

  // ignore: unused_element
  // Future<DetailTabKonvenModel> getkonvenById(String id) async {
  //   final response = await http.post('$url/detailtabkonven/$id');

  //   if (response.statusCode == 200) {
  //     return DetailTabKonvenModel.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to load a case');
  //   }
  // }

  // ignore: unused_element
  // Future<DetailTabKonvenModel> createCase(
  //     DetailTabKonvenModel detailtabkonven) async {
  //   Map data = {
  //     'nama_produk': detailtabkonven.nama_produk,
  //     'gambar': detailtabkonven.gambar,
  //     'deskripsi': detailtabkonven.deskripsi,
  //     'syarat': detailtabkonven.syarat,
  //     'ketentuan': detailtabkonven.ketentuan,
  //     'fasilitas_manfaat': detailtabkonven.fasilitas_manfaat,
  //     'sk_se': detailtabkonven.sk_se
  //   };

  //   final Response response = await post(
  //     ('$url/detailtabkonven'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(data),
  //   );
  //   if (response.statusCode == 200) {
  //     return DetailTabKonvenModel.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to post cases');
  //   }
  // }

  Future<void> deleteCase(String id) async {
    Response res = await delete(Uri.parse('$url/detailtabkonven/$id'));
    if (res.statusCode == 200) {
      // ignore: avoid_print
      print("Case deleted");
    } else {
      throw "Failed to delete a case.";
    }
  }
}
