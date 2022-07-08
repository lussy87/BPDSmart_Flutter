// ignore_for_file: non_constant_identifier_names

class LayananModel {
  int jaringan_pelayanan_id;
  String nama_menu;
  String status;
  int tipe_id;

  LayananModel(
      {this.jaringan_pelayanan_id, this.nama_menu, this.status, this.tipe_id});
  LayananModel.fromJson(Map json)
      : jaringan_pelayanan_id = json['jaringan_pelayanan_id'],
        nama_menu = json['nama_menu'],
        status = json['status'],
        tipe_id = json['tipe_id'];
}
