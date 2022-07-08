// ignore_for_file: non_constant_identifier_names

class KreditPembiayaanModel {
  int kredit_id;
  int pembiayaan_id;
  String nama_menu;
  String status;
  int tipe_id;

  KreditPembiayaanModel(
      {this.kredit_id,
      this.pembiayaan_id,
      this.nama_menu,
      this.status,
      this.tipe_id});
  KreditPembiayaanModel.fromJson(Map json)
      : kredit_id = json['kredit_id'],
        pembiayaan_id = json['pembiayaan_id'],
        nama_menu = json['nama_menu'],
        status = json['status'],
        tipe_id = json['tipe_id'];
}
