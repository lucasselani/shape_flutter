import 'package:repository/src/models/value.dart';

class FattyAcids {
  Value saturated;
  Value monounsaturated;
  Value polyunsaturated;
  Value h120;
  Value h140;
  Value h160;
  Value h180;
  Value h200;
  Value h220;
  Value h240;
  Value h161;
  Value h181;
  Value h201;
  Value h182N6;
  Value h183N3;
  Value h204;
  Value h205;
  Value h225;
  Value h226;
  Value h181t;
  Value h182t;

  FattyAcids(
      {this.saturated,
      this.monounsaturated,
      this.polyunsaturated,
      this.h120,
      this.h140,
      this.h160,
      this.h180,
      this.h200,
      this.h220,
      this.h240,
      this.h161,
      this.h181,
      this.h201,
      this.h182N6,
      this.h183N3,
      this.h204,
      this.h181t,
      this.h182t});

  FattyAcids.fromJson(Map<String, dynamic> json) {
    saturated =
        json['saturated'] != null ? Value.fromJson(json['saturated']) : null;
    monounsaturated = json['monounsaturated'] != null
        ? Value.fromJson(json['monounsaturated'])
        : null;
    polyunsaturated = json['polyunsaturated'] != null
        ? Value.fromJson(json['polyunsaturated'])
        : null;
    h120 = json['12:0'] != null ? Value.fromJson(json['12:0']) : null;
    h140 = json['14:0'] != null ? Value.fromJson(json['14:0']) : null;
    h160 = json['16:0'] != null ? Value.fromJson(json['16:0']) : null;
    h180 = json['18:0'] != null ? Value.fromJson(json['18:0']) : null;
    h200 = json['20:0'] != null ? Value.fromJson(json['20:0']) : null;
    h220 = json['22:0'] != null ? Value.fromJson(json['22:0']) : null;
    h240 = json['24:0'] != null ? Value.fromJson(json['24:0']) : null;
    h161 = json['16:1'] != null ? Value.fromJson(json['16:1']) : null;
    h181 = json['18:1'] != null ? Value.fromJson(json['18:1']) : null;
    h201 = json['20:1'] != null ? Value.fromJson(json['20:1']) : null;
    h182N6 = json['18:2 n-6'] != null ? Value.fromJson(json['18:2 n-6']) : null;
    h183N3 = json['18:3 n-3'] != null ? Value.fromJson(json['18:3 n-3']) : null;
    h204 = json['20:4'] != null ? Value.fromJson(json['20:4']) : null;
    h205 = json['20:5'] != null ? Value.fromJson(json['20:5']) : null;
    h225 = json['22:5'] != null ? Value.fromJson(json['22:5']) : null;
    h226 = json['22:6'] != null ? Value.fromJson(json['22:6']) : null;
    h181t = json['18:1t'] != null ? Value.fromJson(json['18:1t']) : null;
    h182t = json['18:2t'] != null ? Value.fromJson(json['18:2t']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.saturated != null) {
      data['saturated'] = this.saturated.toJson();
    }
    if (this.monounsaturated != null) {
      data['monounsaturated'] = this.monounsaturated.toJson();
    }
    if (this.polyunsaturated != null) {
      data['polyunsaturated'] = this.polyunsaturated.toJson();
    }
    if (this.h120 != null) {
      data['12:0'] = this.h120.toJson();
    }
    if (this.h140 != null) {
      data['14:0'] = this.h140.toJson();
    }
    if (this.h160 != null) {
      data['16:0'] = this.h160.toJson();
    }
    if (this.h180 != null) {
      data['18:0'] = this.h180.toJson();
    }
    if (this.h200 != null) {
      data['20:0'] = this.h200.toJson();
    }
    if (this.h220 != null) {
      data['22:0'] = this.h220.toJson();
    }
    if (this.h240 != null) {
      data['24:0'] = this.h240.toJson();
    }
    if (this.h161 != null) {
      data['16:1'] = this.h161.toJson();
    }
    if (this.h181 != null) {
      data['18:1'] = this.h181.toJson();
    }
    if (this.h201 != null) {
      data['20:1'] = this.h201.toJson();
    }
    if (this.h182N6 != null) {
      data['18:2 n-6'] = this.h182N6.toJson();
    }
    if (this.h183N3 != null) {
      data['18:3 n-3'] = this.h183N3.toJson();
    }
    if (this.h204 != null) {
      data['20:4'] = this.h204.toJson();
    }
    if (this.h205 != null) {
      data['20:5'] = this.h205.toJson();
    }
    if (this.h225 != null) {
      data['22:5'] = this.h225.toJson();
    }
    if (this.h226 != null) {
      data['22:6'] = this.h226.toJson();
    }
    if (this.h181t != null) {
      data['18:1t'] = this.h181t.toJson();
    }
    if (this.h182t != null) {
      data['18:2t'] = this.h182t.toJson();
    }
    return data;
  }
}
