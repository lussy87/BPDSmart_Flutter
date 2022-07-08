// ignore_for_file: non_constant_identifier_names

class InfoInternalModel {
  int informasi_id;
  int internal_id;
  String nama_menu;
  String status;
  int tipe_id;

  InfoInternalModel(
      {this.informasi_id,
      this.internal_id,
      this.nama_menu,
      this.status,
      this.tipe_id});
  InfoInternalModel.fromJson(Map json)
      : informasi_id = json['informasi_id'],
        internal_id = json['internal_id'],
        nama_menu = json['nama_menu'],
        status = json['status'],
        tipe_id = json['tipe_id'];
}
