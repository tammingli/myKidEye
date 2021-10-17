import 'dart:convert';

List<SearchModel> searchModelFromJson(String str) => List<SearchModel>.from(json.decode(str).map((x) => SearchModel.fromJson(x)));

String searchModelToJson(List<SearchModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SearchModel {
  SearchModel({
    this.penyakit_id,
    this.penyakit_pengenalan,
    this.pengenalan_gambar,
    this.penyakit_sebab,
    this.sebab_gambar,
    this.penyakit_simptom,
    this.penyakit_faktorrisiko,
    this.penyakit_rawatan,
    this.penyakit_rawatan2,
    this.rawatan_gambar,
    this.penyakit_kesan,
    this.penyakit_komplikasi1,
    this.penyakit_komplikasi2,
    this.komplikasi_gambar1,
    this.komplikasi_gambar2,


  });

  String penyakit_id;
  String penyakit_pengenalan;
  String pengenalan_gambar;
  String penyakit_sebab;
  String sebab_gambar;
  String penyakit_simptom;
  String penyakit_faktorrisiko;
  String penyakit_rawatan;
  String penyakit_rawatan2;
  String rawatan_gambar;
  String penyakit_kesan;
  String penyakit_komplikasi1;
  String penyakit_komplikasi2;
  String komplikasi_gambar1;
  String komplikasi_gambar2;

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
    penyakit_id: json["penyakit_id"] == null ? null : json["penyakit_id"],
    penyakit_pengenalan: json["penyakit_pengenalan"] == null ? null : json["penyakit_pengenalan"],
    pengenalan_gambar: json["pengenalan_gambar"] == null ? null : json["pengenalan_gambar"],
    penyakit_sebab: json["penyakit_sebab"] == null ? null : json["penyakit_sebab"],
    sebab_gambar: json["sebab_gambar"] == null ? null : json["sebab_gambar"],
    penyakit_simptom: json["penyakit_simptom"] == null ? null : json["penyakit_simptom"],
    penyakit_faktorrisiko: json["penyakit_faktorrisiko"] == null ? null : json["penyakit_faktorrisiko"],
    penyakit_rawatan: json["penyakit_rawatan"] == null ? null : json["penyakit_rawatan"],
    penyakit_rawatan2: json["penyakit_rawatan2"] == null ? null : json["penyakit_rawatan2"],
    rawatan_gambar: json["rawatan_gambar"] == null ? null : json["rawatan_gambar"],
    penyakit_kesan: json["penyakit_kesan"] == null ? null : json["penyakit_kesan"],
    penyakit_komplikasi1: json["penyakit_komplikasi1"] == null ? null : json["penyakit_komplikasi1"],
    penyakit_komplikasi2: json["penyakit_komplikasi2"] == null ? null : json["penyakit_komplikasi2"],
    komplikasi_gambar1: json["komplikasi_gambar1"] == null ? null : json["komplikasi_gambar1"],
    komplikasi_gambar2: json["komplikasi_gambar2"] == null ? null : json["komplikasi_gambar2"],
  );

  Map<String, dynamic> toJson() => {
    "penyakit_id": penyakit_id == null ? null : penyakit_id,
    "penyakit_pengenalan": penyakit_pengenalan == null ? null : penyakit_pengenalan,
    "pengenalan_gambar": pengenalan_gambar == null ? null : pengenalan_gambar,
    "penyakit_sebab": penyakit_sebab == null ? null : penyakit_sebab,
    "sebab_gambar": sebab_gambar == null ? null : sebab_gambar,
    "penyakit_simptom": penyakit_simptom == null ? null : penyakit_simptom,
    "penyakit_faktorrisiko": penyakit_faktorrisiko == null ? null : penyakit_faktorrisiko,
    "penyakit_rawatan": penyakit_rawatan == null ? null : penyakit_rawatan,
    "penyakit_rawatan2": penyakit_rawatan2 == null ? null : penyakit_rawatan2,
    "rawatan_gambar": rawatan_gambar == null ? null : rawatan_gambar,
    "penyakit_kesan": penyakit_kesan == null ? null : penyakit_kesan,
    "penyakit_komplikasi1": penyakit_komplikasi1 == null ? null : penyakit_komplikasi1,
    "penyakit_komplikasi2": penyakit_komplikasi2 == null ? null : penyakit_komplikasi2,
    "komplikasi_gambar1": komplikasi_gambar1 == null ? null : komplikasi_gambar1,
    "komplikasi_gambar2": komplikasi_gambar2 == null ? null : komplikasi_gambar2,
  };
}