import 'package:repository/src/models/value.dart';

class AminoAcids {
  Value tryptophan;
  Value threonine;
  Value isoleucine;
  Value leucine;
  Value lysine;
  Value methionine;
  Value cystine;
  Value phenylalanine;
  Value tyrosine;
  Value valine;
  Value arginine;
  Value histidine;
  Value alanine;
  Value aspartic;
  Value glutamic;
  Value glycine;
  Value proline;
  Value serine;

  AminoAcids(
      {this.tryptophan,
      this.threonine,
      this.isoleucine,
      this.leucine,
      this.lysine,
      this.methionine,
      this.cystine,
      this.phenylalanine,
      this.tyrosine,
      this.valine,
      this.arginine,
      this.histidine,
      this.alanine,
      this.aspartic,
      this.glutamic,
      this.glycine,
      this.proline,
      this.serine});

  AminoAcids.fromJson(Map<String, dynamic> json) {
    tryptophan =
        json['tryptophan'] != null ? Value.fromJson(json['tryptophan']) : null;
    threonine =
        json['threonine'] != null ? Value.fromJson(json['threonine']) : null;
    isoleucine =
        json['isoleucine'] != null ? Value.fromJson(json['isoleucine']) : null;
    leucine = json['leucine'] != null ? Value.fromJson(json['leucine']) : null;
    lysine = json['lysine'] != null ? Value.fromJson(json['lysine']) : null;
    methionine =
        json['methionine'] != null ? Value.fromJson(json['methionine']) : null;
    cystine = json['cystine'] != null ? Value.fromJson(json['cystine']) : null;
    phenylalanine = json['phenylalanine'] != null
        ? Value.fromJson(json['phenylalanine'])
        : null;
    tyrosine =
        json['tyrosine'] != null ? Value.fromJson(json['tyrosine']) : null;
    valine = json['valine'] != null ? Value.fromJson(json['valine']) : null;
    arginine =
        json['arginine'] != null ? Value.fromJson(json['arginine']) : null;
    histidine =
        json['histidine'] != null ? Value.fromJson(json['histidine']) : null;
    alanine = json['alanine'] != null ? Value.fromJson(json['alanine']) : null;
    aspartic =
        json['aspartic'] != null ? Value.fromJson(json['aspartic']) : null;
    glutamic =
        json['glutamic'] != null ? Value.fromJson(json['glutamic']) : null;
    glycine = json['glycine'] != null ? Value.fromJson(json['glycine']) : null;
    proline = json['proline'] != null ? Value.fromJson(json['proline']) : null;
    serine = json['serine'] != null ? Value.fromJson(json['serine']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.tryptophan != null) {
      data['tryptophan'] = this.tryptophan.toJson();
    }
    if (this.threonine != null) {
      data['threonine'] = this.threonine.toJson();
    }
    if (this.isoleucine != null) {
      data['isoleucine'] = this.isoleucine.toJson();
    }
    if (this.leucine != null) {
      data['leucine'] = this.leucine.toJson();
    }
    if (this.lysine != null) {
      data['lysine'] = this.lysine.toJson();
    }
    if (this.methionine != null) {
      data['methionine'] = this.methionine.toJson();
    }
    if (this.cystine != null) {
      data['cystine'] = this.cystine.toJson();
    }
    if (this.phenylalanine != null) {
      data['phenylalanine'] = this.phenylalanine.toJson();
    }
    if (this.tyrosine != null) {
      data['tyrosine'] = this.tyrosine.toJson();
    }
    if (this.valine != null) {
      data['valine'] = this.valine.toJson();
    }
    if (this.arginine != null) {
      data['arginine'] = this.arginine.toJson();
    }
    if (this.histidine != null) {
      data['histidine'] = this.histidine.toJson();
    }
    if (this.alanine != null) {
      data['alanine'] = this.alanine.toJson();
    }
    if (this.aspartic != null) {
      data['aspartic'] = this.aspartic.toJson();
    }
    if (this.glutamic != null) {
      data['glutamic'] = this.glutamic.toJson();
    }
    if (this.glycine != null) {
      data['glycine'] = this.glycine.toJson();
    }
    if (this.proline != null) {
      data['proline'] = this.proline.toJson();
    }
    if (this.serine != null) {
      data['serine'] = this.serine.toJson();
    }
    return data;
  }
}
