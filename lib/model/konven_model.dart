// ignore_for_file: non_constant_identifier_names
class KonvenModel {
  final String konten_id;
  final String konten_parent;
  final String konten_menu;
  final String konten_url;

  KonvenModel(
      {this.konten_id, this.konten_parent, this.konten_menu, this.konten_url});

  factory KonvenModel.fromJson(Map<String, dynamic> json) {
    return KonvenModel(
        konten_id: json['konten_id'] as String,
        konten_parent: json['konten_parent'] as String,
        konten_menu: json['konten_menu'] as String,
        konten_url: json['konten_url'] as String);
  }

  String get title => null;

  @override
  String toString() {
    return 'Trans{konten_id: $konten_id, konten_parent: $konten_parent, konten_menu: $konten_menu, konten_url: $konten_url}';
  }
}
