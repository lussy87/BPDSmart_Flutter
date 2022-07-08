// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class TabKonvenModel {
  final String konten_id;
  final String konten_parent;
  final String konten_menu;
  final String konten_judul;
  final String konten_subjudul;
  final String konten_gambar;
  final String konten_deskripsi;
  final String konten_syarat;
  final String konten_ketentuan;
  final String konten_fasilitas;
  final String konten_promosi_gambar;
  final String konten_promosi_text;
  final String konten_sk;

  TabKonvenModel(
      {this.konten_id,
      this.konten_parent,
      this.konten_menu,
      this.konten_judul,
      this.konten_subjudul,
      this.konten_gambar,
      this.konten_deskripsi,
      this.konten_syarat,
      this.konten_ketentuan,
      this.konten_fasilitas,
      this.konten_promosi_gambar,
      this.konten_promosi_text,
      this.konten_sk});

  factory TabKonvenModel.fromJson(Map<String, dynamic> json) {
    return TabKonvenModel(
      konten_id: json['konten_id'] as String,
      konten_parent: json['konten_parent'] as String,
      konten_menu: json['konten_menu'] as String,
      konten_judul: json['konten_judul'] as String,
      konten_subjudul: json['konten_subjudul'] as String,
      konten_gambar: json['konten_gambar'] as String,
      konten_deskripsi: json['konten_deskripsi'] as String,
      konten_syarat: json['konten_syarat'] as String,
      konten_ketentuan: json['konten_ketentuan'] as String,
      konten_fasilitas: json['konten_fasilitas'] as String,
      konten_promosi_gambar: json['konten_promosi_gambar'] as String,
      konten_promosi_text: json['konten_promosi_text'] as String,
      konten_sk: json['konten_sk'] as String,
    );
  }

  @override
  String toString() {
    return 'Trans{konten_id: $konten_id, konten_parent: $konten_parent, konten_menu: $konten_menu, konten_judul: $konten_judul, konten_subjudul: $konten_subjudul, konten_gambar: $konten_gambar, konten_deskripsi: $konten_deskripsi, konten_syarat: $konten_syarat, konten_ketentuan: $konten_ketentuan, konten_fasilitas: $konten_fasilitas, konten_promosi_gambar: $konten_promosi_gambar, konten_promosi_text: $konten_promosi_text, konten_sk: $konten_sk}';
  }
}
