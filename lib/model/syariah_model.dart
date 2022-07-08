// ignore_for_file: non_constant_identifier_names
class SyariahModel {
  final String dana_syariah_id;
  final String nama_menu;
  final String tipe_id;

  SyariahModel({
    this.dana_syariah_id,
    this.nama_menu,
    this.tipe_id,
  });

  factory SyariahModel.fromJson(Map<String, dynamic> json) {
    return SyariahModel(
      dana_syariah_id: json['dana_syariah_id'] as String,
      nama_menu: json['nama_menu'] as String,
      tipe_id: json['tipe_id'] as String,
    );
  }

  String get title => null;

  @override
  String toString() {
    return 'Trans{dana_syariah_id: $dana_syariah_id, nama_menu: $nama_menu, tipe_id: $tipe_id}';
  }
}
