// ignore_for_file: non_constant_identifier_names

class Cases {
  final String detail_tabkonven_id;
  final String nama_produk;
  final String gambar;
  final String deskripsi;
  final String syarat;
  final String ketentuan;
  final String fasilitas_manfaat;
  final String sk_se;

  Cases(
      {this.detail_tabkonven_id,
      this.nama_produk,
      this.gambar,
      this.deskripsi,
      this.syarat,
      this.ketentuan,
      this.fasilitas_manfaat,
      this.sk_se});

  factory Cases.fromJson(Map<String, dynamic> json) {
    return Cases(
      detail_tabkonven_id: json['detail_tabkonven_id'] as String,
      nama_produk: json['nama_produk'] as String,
      gambar: json['gambar'] as String,
      deskripsi: json['deskripsi'] as String,
      syarat: json['syarat'] as String,
      ketentuan: json['ketentuan'] as String,
      fasilitas_manfaat: json['fasilitas_manfaat'] as String,
      sk_se: json['sk_se'] as String,
    );
  }

  @override
  String toString() {
    return 'Trans{detail_tabkonven_id: $detail_tabkonven_id, nama_produk: $nama_produk, gambar: $gambar, deskripsi: $deskripsi, syarat: $syarat, ketentuan: $ketentuan, fasilitas_manfaat: $fasilitas_manfaat, sk_se: $sk_se }';
  }
}
